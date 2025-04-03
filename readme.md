## This is TDD Assignment for Incubyte

This is a console application for implementing the add method 


#### How to execute the application 
first run command 
```
bundle install
```

Run below command at root of project: 
```
ruby lib/string_calculator.rb
```
it will promt you \
``
Enter numbers to add (press Enter Button twice to exit):
``

- enter the numbers, Enter(\n) and comma(,) are default delimiter 
- press Enter Button twice for execution


#### Steps used for creating the application 
 Step 1: Added gem file \
 ``
 bundle init
 ``

 This command creates a Gemfile in your project directory.

Step 2: Add RSpec for Testing

``
gem 'rspec'
`` \
Then bundled gems: \
``
bundle install
``

Step 3: Setting Up RSpec

``
rspec --init
``

This command created the necessary RSpec configuration files.

Step 4: In spec/ directory and add a test file string_calculator_spec.rb. Write tests before implementing the logic.


Step 5: Create the String Calculator Class Inside the lib/ directory, \
Create a file string_calculator.rb and define a class StringCalculator with an add method.


Note: 

1) I consider that space is not a default delimiter, only comma and Enter are.
