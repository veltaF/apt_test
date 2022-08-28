1. Install python > 3.0
2. Install robotframework 4.0
3. Install robotframework-seleniumlibrary 4.5.0
4. run tests from command line with command:
robot -d results/Selenium2 -i filtering  -v BROWSER:chrome -l selenium_log.html -o selenium_output.xml -r selenium_report.xml Tests\SmokeTests 