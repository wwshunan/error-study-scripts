arrayid="$1"
sample=$(sed "${arrayid}q;d" job.conf)

cd ${sample}
echo -e "[`date`]\t Running TraceWin on $sample"
./TraceWin example.ini
echo -e "[`date`]\t Finished with $sample"
