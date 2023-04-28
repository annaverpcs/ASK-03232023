#ASK test set for Auto-grade- Quiz with No Textual Questions

@testset1
Feature: Test Set for Auto-grade- Quiz with No Textual Questions
  Scenario: Auto-grade system analyzes the Quiz as Passed with correct answers
  #login as a teacher
    Given I open url "http://ask-int.portnov.com/"
    Then I should see page title contains "Assessment Control"
    Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
  #create new quiz
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
    And I wait for 1 sec
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]" should contain text "Quiz- w/o TQ"
    And I wait for 3 sec
  #Verify the created quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]/../../..//button[@class='mat-raised-button mat-primary']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Close')]"
    And I wait for 2 sec
  #assign quiz to a student
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Quiz- w/o TQ')]"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Dean Student')]"
    And I wait for 10 sec
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And I wait for 20 sec
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//span[contains(text(),'Log Out')]"
    Then I should see page title contains "Assessment Control"
    And I wait for 1 sec
  #login as student
    Then I type "deantester3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "123qaz" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
  #submit an assignment
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
    Then element with xpath "//ac-student-assignments-page[@class='ng-star-inserted']" should be present
  #verify that the Quiz graded automatically
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    And I wait for element with xpath "//td[contains(text(),'Quiz- w/o TQ')]" to be present
    And element with xpath "//td[contains(text(),'Dean Student')]" should have attribute "//td[@class='status']" as "PASSED"
    And I wait for 1 sec
  #delete the quiz
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]/../../..//button[@class='mat-raised-button mat-warn']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains(text(),'Delete')]"


  Scenario: Auto-grade system analyzes the Quiz as Failed with wrong answers
  #login as a teacher
    Given I open url "http://ask-int.portnov.com/"
    Then I should see page title contains "Assessment Control"
    Then I type "yoyo6@cocac.uk" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345XYZ" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
  #create new quiz
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
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]" should contain text "Quiz- w/o TQ"
    And I wait for 1 sec
  #Verify the created quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Quiz- w/o TQ')]/../../..//button[@class='mat-raised-button mat-primary']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Close')]"
    And I wait for 2 sec
  #assign quiz to a student
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//span[contains(text(),'Dean Student')]"
    And I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And I wait for 1 sec
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//span[contains(text(),'Log Out')]"
    Then I should see page title contains "Assessment Control"
    And I wait for 1 sec
  #login as student
    Then I type "deantester3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "123qaz" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
  #submit an assignment
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
  #verify that the Quiz graded automatically
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    And I wait for element with xpath "//td[contains(text(),'Dean Quiz- w/TQ')]" to be present
    And element with xpath "//td[contains(text(),'Dean Student')]" should have attribute "//td[@class='status']" as "FAILED"
    And I wait for 1 sec
  #delete the quiz
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Dean Quiz- w/TQ')]/../../..//button[@class='mat-raised-button mat-warn']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains(text(),'Delete')]"

