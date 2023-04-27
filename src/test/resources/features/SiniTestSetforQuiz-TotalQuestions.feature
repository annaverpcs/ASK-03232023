#ASK test set for Quiz - Total Questions - Assuming that the total no. of questions allowed 5

@testset1
  Feature: Test Set for Quiz - Total Questions

    Scenario: Test case- Quiz allows 5 questions
      Given I open url "http://ask-int.portnov.com/"
      Then I should see page title contains "Assessment Control"
      Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
      And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 2 sec
      Then I type "Dean Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 2 sec
      And I click on element with xpath "//mat-radio-button[2]"
      Then I type "Question 1" into element with xpath "//textarea[@formcontrolname='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I wait for 5 sec
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 3 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 2" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 3" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 4" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 5" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I click on element with xpath "//span[contains(text(), 'Save')]"
      And I wait for 2 sec
      Then element with xpath "//mat-panel-title[contains(text(),'01 Dean Quiz')]" should contain text "Dean Quiz"
      And I wait for 5 sec

    Scenario: Test case- Quiz allows less than 5 questions
      Given I open url "http://ask-int.portnov.com/"
      Then I should see page title contains "Assessment Control"
      Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
      And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 2 sec
      Then I type "Dean Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 2 sec
      And I click on element with xpath "//mat-radio-button[2]"
      Then I type "Question 1" into element with xpath "//textarea[@formcontrolname='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I wait for 5 sec
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 3 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 2" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 3" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 4" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I wait for 3 sec
      And I click on element with xpath "//span[contains(text(), 'Save')]"
      And I wait for 2 sec
      Then element with xpath "//mat-panel-title[contains(text(),'01 Dean Quiz')]" should contain text "Dean Quiz"
      And I wait for 5 sec

    Scenario: Test case- Quiz allows more than 5 questions
      Given I open url "http://ask-int.portnov.com/"
      Then I should see page title contains "Assessment Control"
      Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
      And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 2 sec
      Then I type "Dean Quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 2 sec
      And I click on element with xpath "//mat-radio-button[2]"
      Then I type "Question 1" into element with xpath "//textarea[@formcontrolname='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I wait for 5 sec
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 3 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 2" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 3" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 4" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 5" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 2 sec
      Then I type "Question 6" into element with xpath "//textarea[@placeholder='Question *']"
      And I wait for 3 sec
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      And I wait for 3 sec
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I click on element with xpath "//span[contains(text(), 'Save')]"
      And I wait for 2 sec
      Then element with xpath "//mat-panel-title[contains(text(),'01 Dean Quiz')]" should contain text "Dean Quiz"
      And I wait for 5 sec