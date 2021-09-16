# Tutorial

## (Currently can only be run in Chrome and Mac OS)

This framework was developed Cucumber as BDD framework, data-driven, function-based and use Page Object Model (POM). It is not yet tested in Windows, any help to test with Windows will be great !

**To run :**<br>

1.  Install Ruby with min version 2.7.2 (use rbenv or rvm)
    Using rbenv :
    Open terminal

    ```shell
         $ brew install rbenv ruby-build
         $ rbenv install 2.7.2
         $ rbenv local 2.7.2
         $ rbenv global 2.7.2
         $ rbenv rehash
    ```
    
2.  Install bundler to manage depedencies :

    - open terminal
    - gem install bundler

3. bundle init

4. bundle install

5. download chromedriver and put it on assets/driver/chromedriver, make sure the chromedriver you download match your current chrome browser version

6. open your terminal and type :

   ```shell
   cucumber features/gherkin_file/test_case.feature:{**linenumber**}
   ```

_Notes_<br>
If assset folder not exist, please create it and put on the root of the project

**Runner Example**<br>

```shell
cucumber features/gherkin_file/test_case.feature:2
```

**Current Scenario Available to Run**<br>

```shell
cucumber features/gherkin_file/test_case.feature:3
```

# Create New Scenario

To create new scenario, please read the the following :

- Write test scenario with Gherkin language in .feature file. You can find it in the /features/gherkin_file/test_case.feature .
- Put login data, selector, and test data in /resources folder. The yml file already named accordingly.
- If you need to create custom step, write it in /step_definition/test_steps.rb .
- Helpers function can be found in /helpers/helpers.rb
