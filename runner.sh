# Run tests
java -jar runner.jar config \
  --path config.yml \
  --apikey <API_KEY> \
&& \
# Merge XML Files to a Single file in the "reports" folder
java -jar junit-xml-merger.jar \
     -i=./ \
     -o=reports/combinedReport.xml \
     -s="My Suite" \
&& \
# Delete XML files used to create the combined report XML
rm -rf ./*.xml
