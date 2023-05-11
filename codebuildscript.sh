EXIT_CODE=$(grep 'Finished with exit code:' cx-flow.log | tail -1 |sed 's/.*: //')
echo $EXIT_CODE
if [ $EXIT_CODE != 0 ]
then
        exit 1
else
        exit 0
fi