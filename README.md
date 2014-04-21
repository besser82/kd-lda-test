LDA test on KD data.

Before starting, please add the following files:
* kd_answers.csv.xz
* kd_topics.csv.xz

Setting up MALLET:
* download from http://mallet.cs.umass.edu/download.php
* unpacking: `tar xzvf mallet-2.0.7.tar.gz && ln -s mallet-2.0.7 mallet`
* compiling: `cd mallet && ant`

Running LDA on your data:
* Run `make topics` from the repository root
