# Automation Ruby Selenium

## PLEASE USE BRANCH DEVELOP, DON'T USE MASTER

## (Currently can only be run in Chrome and Mac OS)

**To run :**<br>

1. bundle init
2. bundle install
3. download chromedriver and put it on assets/driver/chromedriver, make sure the chromedriver you download match your current chrome browser version
4. open your terminal and run 'cucumber features/gherkin_file/test_case.feature:{**linenumber**}'

_Notes_<br>
If assset folder not exist, please create it and put on the root of the project

**Runner Example**<br>
cucumber features/gherkin_file/test_case.feature:2

**Current Scenario Available to Run**<br>
cucumber features/gherkin_file/test_case.feature:3 <br>