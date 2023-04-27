#ASK test set for Auto-grade- Quiz with No Textual Questions

@testset1
Feature: Test Set for Auto-grade- Quiz with No Textual Questions
  Scenario: Auto-grade system analyzes the Quiz as Passed with correct answers
    Given I open url "http://ask-int.portnov.com/"
    Then I should see page title contains "Assessment Control"
    Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 1 sec
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "Quiz- w/o TQ" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 1 sec
    And I click on element with xpath "//div[contains(text(),'Single-Choice')]"
    Then I type "Question 1" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]/../../..//button[@class='mat-raised-button mat-primary']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Close')]"
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//span[contains(text(),'Select All')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And I wait for 1 sec
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//span[contains(text(),'Log Out')]"
    Then I should see page title contains "Assessment Control"
    And I wait for 1 sec
    Then I type "deantester3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "123qaz" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'My Assignments')]"
    And I wait for 1 sec
    Then I wait for element with xpath "//h4[contains(text(),'My Assignments')]" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//button[@class='mat-raised-button mat-primary'][1]"
    And I wait for 1 sec
    Then I click on element with xpath "//div[contains(text(), 'Answer 1')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Ok')]"
    And I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    And I wait for element with xpath "//td[contains(text(),'Dean Quiz- w/TQ')]/..//span[contains(text(),'PASSED')]" to be present
    And I wait for 5 sec


  Scenario: Auto-grade system analyzes the Quiz as Failed with wrong answers
    Given I open url "http://ask-int.portnov.com/"
    Then I should see page title contains "Assessment Control"
    Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 1 sec
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "Dean Quiz- w/0 TQ" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 1 sec
    And I click on element with xpath "//div[contains(text(),'Single-Choice')]"
    Then I type "Question 1" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]/../../..//button[@class='mat-raised-button mat-primary']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Close')]"
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//span[contains(text(),'Select All')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And I wait for 1 sec
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//span[contains(text(),'Log Out')]"
    Then I should see page title contains "Assessment Control"
    And I wait for 1 sec
    Then I type "deantester3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "123qaz" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'My Assignments')]"
    And I wait for 1 sec
    Then I wait for element with xpath "//h4[contains(text(),'My Assignments')]" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//button[@class='mat-raised-button mat-primary'][1]"
    And I wait for 1 sec
    Then I click on element with xpath "//div[contains(text(), 'Answer 2')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Ok')]"
    And I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    And I wait for element with xpath "//td[contains(text(),'Dean Quiz- w/TQ')]/..//span[contains(text(),'FAILED')]" to be present
    And I wait for 3 sec


  Scenario: Auto-grade system analyzes the Quiz  with multi-choice questions
    Given I open url "http://ask-int.portnov.com/"
    Then I should see page title contains "Assessment Control"
    Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 1 sec
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "Dean Quiz- w/0 TQ" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 1 sec
    And I click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
    And I type "Different levels of software testing" into element with xpath "//textarea[@placeholder='Question *']"
    Then I type "Unit testing" into element with xpath "//textarea[@placeholder='Option 1*']"
    And I wait for 1 sec
    Then I type "Smoke testing" into element with xpath "//textarea[@placeholder='Option 2*']"
    And I wait for 1 sec
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I type "System testing" into element with xpath "//textarea[@placeholder='Option 3*']"
    And I wait for 1 sec
    Then I type "Acceptance testing" into element with xpath "//textarea[@placeholder='Option 4*']"
    And I wait for 1 sec
    Then I type "Integration testing" into element with xpath "//textarea[@placeholder='Option 5*']"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-checkbox[1]"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-checkbox[3]"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-checkbox[4]"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-checkbox[5]"
    And I wait for 1 sec
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]/../../..//button[@class='mat-raised-button mat-primary']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Close')]"
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//span[contains(text(),'Select All')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And I wait for 1 sec
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//span[contains(text(),'Log Out')]"
    Then I should see page title contains "Assessment Control"
    And I wait for 1 sec
    Then I type "deantester3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "123qaz" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'My Assignments')]"
    And I wait for 1 sec
    Then I wait for element with xpath "//h4[contains(text(),'My Assignments')]" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//button[@class='mat-raised-button mat-primary'][1]"
    And I wait for 1 sec
    Then I click on element with xpath "//div[contains(text(), 'Answer 1')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Ok')]"
    And I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    And I click on element with xpath "//td[contains(text(),'Dean Quiz- w/TQ')]/..//span[contains(text(),'Details')]"
    Then element with xpath "//h4[contains(text(),'Different levels of software testing')]" should be present

