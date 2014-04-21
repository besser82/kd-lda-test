.PHONY: answers topics

answers:
	xzcat kd_answers.csv.xz |./normalize.pl >kd_answers.csv
	./mallet/bin/mallet import-file --input kd_answers.csv --keep-sequence --stoplist-file stoplists/de.txt --output kd_answers.csv.mallet
	./mallet/bin/mallet train-topics --input kd_answers.csv.mallet --num-topics 398 --output-model kd_answers.csv.mallet-model --output-state kd_answers.csv.mallet-state --num-threads 4 --num-iterations 10000 --optimize-burn-in 1000 --show-topics-interval 500 --use-symmetric-alpha true >kd_answers.csv.stdout 2>kd_answers.csv.stderr

topics:
	xzcat kd_topics.csv.xz |./normalize.pl >kd_topics.csv
	./mallet/bin/mallet import-file --input kd_topics.csv --keep-sequence --stoplist-file stoplists/de.txt --output kd_topics.csv.mallet
	./mallet/bin/mallet train-topics --input kd_topics.csv.mallet --num-topics 111 --output-model kd_topics.csv.mallet-model --output-state kd_topics.csv.mallet-state --num-threads 4 --num-iterations 10000 --optimize-burn-in 1000 --show-topics-interval 500 --use-symmetric-alpha true >kd_topics.csv.stdout 2>kd_topics.csv.stderr
