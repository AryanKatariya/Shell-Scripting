#!/bin/bash
for (( i=1;i<=100;i++ ));
#for i  in {1..10}
do
#	echo "$i"
	mkdir -p /home/ditiss-02/Desktop/test$i
	touch /home/ditiss-02/Desktop/test$i/file$i
	echo "This is file$i" > /home/ditiss-02/Desktop/test$i/file$i
done

rm -r test*
