@echo off
echo "Compiling..."
call mvn package 

echo "Uploading input files"
call hdfs dfs -rm -r -f input
call hdfs dfs -mkdir -p input
call hdfs dfs -put data/* input 
echo "Clear previous output"
call hdfs dfs -rm -r -f output
del result.txt result.adjmap.txt

echo "Submitting job..."
call spark-submit --deploy-mode client --class FindPath target/FindPath-jar-with-dependencies.jar input/NUS.osm input/input.txt output/result.adjmap.txt output/result.txt

echo "Job finished."
call hdfs dfs -get output/result.adjmap.txt . 
call hdfs dfs -get output/result.txt . 

.\binaries\osmutils_win64 validate-map data/NUS.osm result.adjmap.txt
.\binaries\osmutils_win64 validate data/NUS.osm result.txt
