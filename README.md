# Automation Ruby Selenium

## PLEASE USE BRANCH DEVELOP, DON'T USE MASTER

## (Currently can only be run in Chrome and Mac OS)

**To run :**<br>

1.  Install Ruby with min version 2.7.2 (use rbenv or rvm)
    Using rbenv :
    Open terminal

             $ brew install rbenv ruby-build
             $ rbenv install 2.7.2
             $ rbenv local 2.7.2
             $ rbenv global 2.7.2
             $ rbenv rehash

2.  Install bundler to manage depedencies :

    - open terminal
    - gem install bundler

3.  bundle init
4.  bundle install
5.  download chromedriver and put it on assets/driver/chromedriver, make sure the chromedriver you download match your current chrome browser version
6.  open your terminal and run 'cucumber features/gherkin_file/test_case.feature:{**linenumber**}'

_Notes_<br>
If assset folder not exist, please create it and put on the root of the project

**Runner Example**<br>
cucumber features/gherkin_file/test_case.feature:2

**Current Scenario Available to Run**<br>
cucumber features/gherkin_file/test_case.feature:3 <br>
