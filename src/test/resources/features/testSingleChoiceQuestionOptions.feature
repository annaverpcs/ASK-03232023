#Test set "Single Choice Question - Options
#Author Gulnoza Kasimova
  @gulasktest
  Feature: "Single Choice Question - Options

    Background:
      Given I open url "http://ask-int.portnov.com/#/login"
      Then I should see page title contains "Assessment Control"
      And I type "hsood@nswgovernment.cf" into element with xpath "//input[@formcontrolname='email']"
      And I type "Zxcasd1" into element with xpath "//input[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then element with xpath "//p[contains(text(),'TEACHER')]" should be present


    @gulasktest1
    Scenario: Two options is created by defolt in a Single-Choice radio button selection

      And I click on element with xpath " //h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "#1Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 1 sec
      Then element with xpath "//textarea[@formcontrolname='question']" should be present
      Then element with xpath "//textarea[@placeholder='Option 1*']" should be present
      Then element with xpath "//textarea[@placeholder='Option 2*']" should be present

    @gulasktest2
    Scenario: Up to 15 options can be created in a single-choice question

      And I click on element with xpath " //h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "#1Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 1 sec
      Then element with xpath "//textarea[@formcontrolname='question']" should be present
      Then element with xpath "//textarea[@placeholder='Option 1*']" should be present
      Then element with xpath "//textarea[@placeholder='Option 2*']" should be present
      And I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
      And element with xpath "//textarea[@placeholder='Option 3*']" should be present
      And I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
      And element with xpath "//textarea[@placeholder='Option 4*']" should be present
      And I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
      And element with xpath "//textarea[@placeholder='Option 5*']" should be present
      And I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
      And element with xpath "//textarea[@placeholder='Option 6*']" should be present


    @gulasktest3
    Scenario: More than 15 options cannot be created
      And I click on element with xpath " //h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "#1Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 1 sec
      Then element with xpath "//textarea[@formcontrolname='question']" should be present
      Then element with xpath "//textarea[@placeholder='Option 1*']" should be present
      Then element with xpath "//textarea[@placeholder='Option 2*']" should be present
      And I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
      And element with xpath "//textarea[@placeholder='Option 3*']" should be present
      And   I click on element with xpath "//span[contains(text(),'Add Option')]"
      And element with xpath "//textarea[@placeholder='Option 4*']" should be present
      And I click on element with xpath "//span[contains(text(),'Add Option')]"
      And element with xpath "//textarea[@placeholder='Option 5*']" should be present
      And I click on element with xpath "//span[contains(text(),'Add Option')]"
      And element with xpath "//textarea[@placeholder='Option 6*']" should be present


    @gulasktest4
    Scenario: The option can be selected
      And I click on element with xpath " //h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "#1Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 1 sec
      Then element with xpath "//textarea[@formcontrolname='question']" should be present
      Then element with xpath "//textarea[@placeholder='Option 1*']" should be present
      Then element with xpath "//textarea[@placeholder='Option 2*']" should be present
      And I click on element using JavaScript with xpath "//mat-radio-button[@id='mat-radio-6']"
      
    @gulasktest5

    Scenario: Only one option is allowed to be selected as a correct answer
      And I click on element with xpath " //h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "#1Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 1 sec
      Then element with xpath "//textarea[@formcontrolname='question']" should be present
      Then element with xpath "//textarea[@placeholder='Option 1*']" should be present
      Then element with xpath "//textarea[@placeholder='Option 2*']" should be present
      And I click on element using JavaScript with xpath "//mat-radio-button[@id='mat-radio-6']//div[@class='mat-radio-outer-circle']"
      And I wait for 2 sec
      And I click on element using JavaScript with xpath "//mat-radio-button[@id='mat-radio-8']//div[@class='mat-radio-outer-circle']"

    @gulasktest6
    Scenario: The options can be changed in order
      And I click on element with xpath " //h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "#1Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 1 sec
      Then element with xpath "//textarea[@formcontrolname='question']" should be present
      Then element with xpath "//textarea[@placeholder='Option 1*']" should be present
      Then element with xpath "//textarea[@placeholder='Option 2*']" should be present
      And I type "12" into element with xpath "//textarea[@placeholder='Option 1*']"
      And I type "3" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I click on element using JavaScript with xpath "//button[@class='mat-icon-button mat-accent']"
      Then I wait for 2 sec
      Then element with xpath "//div[@class='mat-menu-content ng-trigger ng-trigger-fadeInItems']" should be present
      Then I wait for 2 sec
      And I click on element with xpath "//span[contains(text(),'Move option up')]"







