echo " --------------------------- "
echo "⏱  starting the scheduler ⏱"
echo " ---------------------------"


while true
do
    make build_all;
    echo "All images builded"
    sleep 10;
    echo "Spinning depth1 crawler container"
    make d1;
    sleep 10;
    echo "Spinning depth2 crawler container"
    make d2;
    sleep 10
    echo "Spinning depth3 crawler container"
    make d3;
done
