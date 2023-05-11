EXIT_CODE=$(grep 'Finished with exit code:' cx-flow.log | tail -1 |sed 's/.*: //')
echo $EXIT_CODE
if [ $EXIT_CODE != 0 ]
then
        echo 'Exit code is Non Zero so beaking pipeline.'
        exit 1
else
        echo 'Exit code is Zero so not beaking pipeline.'
        exit 0
fi