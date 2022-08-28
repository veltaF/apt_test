1. Install python > 3.0
2. Install robotframework 4.0
3. Install robotframework-seleniumlibrary 4.5.0
4. Install robotframework-whitelibrary 1.6.0
5. Install webdriver for your broweser (here is for chrome https://chromedriver.chromium.org/downloads)
6. run tests from command line with command:
robot -d results/Selenium2 -i filtering  -v BROWSER:chrome -l selenium_log.html -o selenium_output.xml -r selenium_report.xml Tests\SmokeTests 