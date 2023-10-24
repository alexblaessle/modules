//
// Alignment with BWA to an additional genome, then use BAMCMP to remove reads that map to the second genome.
//

include { BWA_MEM as BWA_MEM_PRIMARY     } from '../../../modules/nf-core/bwa/mem/main'
include { BWA_MEM as BWA_MEM_CONTAMINANT } from '../../../modules/nf-core/bwa/mem/main'
include { BAMCMP                         } from '../../../modules/nf-core/bamcmp/main'
include { BAM_SORT_STATS_SAMTOOLS        } from '../bam_sort_stats_samtools/main'

workflow FASTQ_ALIGN_BAMCMP_BWA {
    take:
    ch_reads             // channel (mandatory): [ val(meta), [ path(reads) ] ]
    ch_primary_index     // channel (mandatory): [ val(meta2), path(index) ]
    ch_contaminant_index // channel (mandatory): [ val(meta3), path(ch_contaminant_index) ]
    ch_fasta             // channel (optional) : [ val(meta4), path(fasta) ]

    main:
    ch_versions = Channel.empty()

    //
    // Map reads with BWA to the primary index, must be queryname sorted (controlled by config)
    //

    BWA_MEM_PRIMARY ( ch_reads, ch_primary_index, true )
    ch_versions = ch_versions.mix(BWA_MEM_PRIMARY.out.versions)

    //
    // Map reads with BWA to the contaminant index, must be queryname sorted (controlled by config)
    //

    BWA_MEM_CONTAMINANT ( ch_reads, ch_contaminant_index, true )
    ch_versions = ch_versions.mix(BWA_MEM_CONTAMINANT.out.versions)

    //
    // Use BAMCMP to retain only reads which map better to the primary genome.
    // It is highly recommended to use the "as" method, not the default "mapq" method as is included in the config.
    // This is because reads that align perfectly to multiple places in the contamination genome are given a MAPQ of 0,
    // so they would be retained if they map badly to the primary genome, but with MAPQ > 0.
    //

    ch_both_bams = BWA_MEM_PRIMARY.out.bam.join(BWA_MEM_CONTAMINANT.out.bam, by: [0], failOnDuplicate:true, failOnMismatch:true)

    BAMCMP(ch_both_bams)
    ch_versions = ch_versions.mix(BAMCMP.out.versions)
    //
    // Sort, index BAM file and run samtools stats, flagstat and idxstats
    //

    BAM_SORT_STATS_SAMTOOLS ( BAMCMP.out.primary_filtered_bam, ch_fasta)
    ch_versions = ch_versions.mix(BAM_SORT_STATS_SAMTOOLS.out.versions)

    emit:
    bam      = BAM_SORT_STATS_SAMTOOLS.out.bam      // channel: [ val(meta), path(bam) ]
    bai      = BAM_SORT_STATS_SAMTOOLS.out.bai      // channel: [ val(meta), path(bai) ]
    csi      = BAM_SORT_STATS_SAMTOOLS.out.csi      // channel: [ val(meta), path(csi) ]
    stats    = BAM_SORT_STATS_SAMTOOLS.out.stats    // channel: [ val(meta), path(stats) ]
    flagstat = BAM_SORT_STATS_SAMTOOLS.out.flagstat // channel: [ val(meta), path(flagstat) ]
    idxstats = BAM_SORT_STATS_SAMTOOLS.out.idxstats // channel: [ val(meta), path(idxstats) ]
    contaminant_bam = BAMCMP.out.contamination_bam  // channel: [ val(meta), path(bam) ]

    versions = ch_versions                          // channel: [ path(versions.yml) ]
}
