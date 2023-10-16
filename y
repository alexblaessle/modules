- name: hisat2 align test_hisat2_align_single_end
  command: nextflow run ./tests/modules/nf-core/hisat2/align -entry test_hisat2_align_single_end -c ./tests/config/nextflow.config -c ./tests/modules/nf-core/hisat2/align/nextflow.config
  tags:
    - hisat2
    - hisat2/align
  files:
    - path: output/hisat2/genome.splice_sites.txt
      md5sum: d41d8cd98f00b204e9800998ecf8427e
    - path: output/hisat2/hisat2/genome.1.ht2
      md5sum: 057cfa8a22b97ee9cff4c8d342498803
    - path: output/hisat2/hisat2/genome.2.ht2
      md5sum: 47b153cd1319abc88dda532462651fcf
    - path: output/hisat2/hisat2/genome.3.ht2
      md5sum: 4ed93abba181d8dfab2e303e33114777
    - path: output/hisat2/hisat2/genome.4.ht2
      md5sum: c25be5f8b0378abf7a58c8a880b87626
    - path: output/hisat2/hisat2/genome.5.ht2
      md5sum: 91198831aaba993acac1734138c5f173
    - path: output/hisat2/hisat2/genome.6.ht2
      md5sum: 265e1284ce85686516fae5d35540994a
    - path: output/hisat2/hisat2/genome.7.ht2
      md5sum: 9013eccd91ad614d7893c739275a394f
    - path: output/hisat2/hisat2/genome.8.ht2
      md5sum: 33cdeccccebe80329f1fdbee7f5874cb
    - path: output/hisat2/test.bam
    - path: output/hisat2/test.hisat2.summary.log
      md5sum: 7b8a9e61b7646da1089b041333c41a87
    - path: output/hisat2/versions.yml

- name: hisat2 align test_hisat2_align_paired_end
  command: nextflow run ./tests/modules/nf-core/hisat2/align -entry test_hisat2_align_paired_end -c ./tests/config/nextflow.config -c ./tests/modules/nf-core/hisat2/align/nextflow.config
  tags:
    - hisat2
    - hisat2/align
  files:
    - path: output/hisat2/genome.splice_sites.txt
      md5sum: d41d8cd98f00b204e9800998ecf8427e
    - path: output/hisat2/hisat2/genome.1.ht2
      md5sum: 057cfa8a22b97ee9cff4c8d342498803
    - path: output/hisat2/hisat2/genome.2.ht2
      md5sum: 47b153cd1319abc88dda532462651fcf
    - path: output/hisat2/hisat2/genome.3.ht2
      md5sum: 4ed93abba181d8dfab2e303e33114777
    - path: output/hisat2/hisat2/genome.4.ht2
      md5sum: c25be5f8b0378abf7a58c8a880b87626
    - path: output/hisat2/hisat2/genome.5.ht2
      md5sum: 91198831aaba993acac1734138c5f173
    - path: output/hisat2/hisat2/genome.6.ht2
      md5sum: 265e1284ce85686516fae5d35540994a
    - path: output/hisat2/hisat2/genome.7.ht2
      md5sum: 9013eccd91ad614d7893c739275a394f
    - path: output/hisat2/hisat2/genome.8.ht2
      md5sum: 33cdeccccebe80329f1fdbee7f5874cb
    - path: output/hisat2/test.bam
    - path: output/hisat2/test.hisat2.summary.log
      md5sum: 9839b31db795958cc4b70711a3414e9c
    - path: output/hisat2/versions.yml

- name: hisat2 align test_hisat2_align_single_end_no_ss
  command: nextflow run ./tests/modules/nf-core/hisat2/align -entry test_hisat2_align_single_end_no_ss -c ./tests/config/nextflow.config -c ./tests/modules/nf-core/hisat2/align/nextflow.config
  tags:
    - hisat2
    - hisat2/align
  files:
    - path: output/hisat2/hisat2/genome.1.ht2
      md5sum: 98284d11e09faba5be6caeacceae7b3c
    - path: output/hisat2/hisat2/genome.2.ht2
      md5sum: 47b153cd1319abc88dda532462651fcf
    - path: output/hisat2/hisat2/genome.3.ht2
      md5sum: 4ed93abba181d8dfab2e303e33114777
    - path: output/hisat2/hisat2/genome.4.ht2
      md5sum: c25be5f8b0378abf7a58c8a880b87626
    - path: output/hisat2/hisat2/genome.5.ht2
      md5sum: 4db21638bce5ab535147c14a8c5ed27b
    - path: output/hisat2/hisat2/genome.6.ht2
      md5sum: 265e1284ce85686516fae5d35540994a
    - path: output/hisat2/hisat2/genome.7.ht2
      md5sum: 9013eccd91ad614d7893c739275a394f
    - path: output/hisat2/hisat2/genome.8.ht2
      md5sum: 33cdeccccebe80329f1fdbee7f5874cb
    - path: output/hisat2/test.bam
    - path: output/hisat2/test.hisat2.summary.log
      md5sum: 7b8a9e61b7646da1089b041333c41a87
    - path: output/hisat2/versions.yml

- name: hisat2 align test_hisat2_align_paired_end_no_ss
  command: nextflow run ./tests/modules/nf-core/hisat2/align -entry test_hisat2_align_paired_end_no_ss -c ./tests/config/nextflow.config -c ./tests/modules/nf-core/hisat2/align/nextflow.config
  tags:
    - hisat2
    - hisat2/align
  files:
    - path: output/hisat2/hisat2/genome.1.ht2
      md5sum: 98284d11e09faba5be6caeacceae7b3c
    - path: output/hisat2/hisat2/genome.2.ht2
      md5sum: 47b153cd1319abc88dda532462651fcf
    - path: output/hisat2/hisat2/genome.3.ht2
      md5sum: 4ed93abba181d8dfab2e303e33114777
    - path: output/hisat2/hisat2/genome.4.ht2
      md5sum: c25be5f8b0378abf7a58c8a880b87626
    - path: output/hisat2/hisat2/genome.5.ht2
      md5sum: 4db21638bce5ab535147c14a8c5ed27b
    - path: output/hisat2/hisat2/genome.6.ht2
      md5sum: 265e1284ce85686516fae5d35540994a
    - path: output/hisat2/hisat2/genome.7.ht2
      md5sum: 9013eccd91ad614d7893c739275a394f
    - path: output/hisat2/hisat2/genome.8.ht2
      md5sum: 33cdeccccebe80329f1fdbee7f5874cb
    - path: output/hisat2/test.bam
    - path: output/hisat2/test.hisat2.summary.log
      md5sum: 9839b31db795958cc4b70711a3414e9c
    - path: output/hisat2/versions.yml

- name: hisat2 align test_hisat2_align_single_end_unaligned
  command: nextflow run ./tests/modules/nf-core/hisat2/align -entry test_hisat2_align_single_end_unaligned -c ./tests/config/nextflow.config -c ./tests/modules/nf-core/hisat2/align/nextflow.config
  tags:
    - hisat2
    - hisat2/align
  files:
    - path: output/hisat2/genome.splice_sites.txt
      md5sum: d41d8cd98f00b204e9800998ecf8427e
    - path: output/hisat2/hisat2/genome.1.ht2
      md5sum: 057cfa8a22b97ee9cff4c8d342498803
    - path: output/hisat2/hisat2/genome.2.ht2
      md5sum: 47b153cd1319abc88dda532462651fcf
    - path: output/hisat2/hisat2/genome.3.ht2
      md5sum: 4ed93abba181d8dfab2e303e33114777
    - path: output/hisat2/hisat2/genome.4.ht2
      md5sum: c25be5f8b0378abf7a58c8a880b87626
    - path: output/hisat2/hisat2/genome.5.ht2
      md5sum: 91198831aaba993acac1734138c5f173
    - path: output/hisat2/hisat2/genome.6.ht2
      md5sum: 265e1284ce85686516fae5d35540994a
    - path: output/hisat2/hisat2/genome.7.ht2
      md5sum: 9013eccd91ad614d7893c739275a394f
    - path: output/hisat2/hisat2/genome.8.ht2
      md5sum: 33cdeccccebe80329f1fdbee7f5874cb
    - path: output/hisat2/test.bam
    - path: output/hisat2/test.hisat2.summary.log
      md5sum: 7b8a9e61b7646da1089b041333c41a87
    - path: output/hisat2/versions.yml
