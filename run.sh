#remove previous docker container if there is one
docker rm aipdocker

#note that $(cat $(readlink -f VERSION)) is just a clever way to read the VERSION file
# You can hard code it instead
docker run --name aipdocker -it aip:$(cat $(readlink -f VERSION)) > ./plans/plan-result.txt #tests\plan.txt
