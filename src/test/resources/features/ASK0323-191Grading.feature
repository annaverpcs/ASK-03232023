#TC for Grading - Quiz with SingleChoice Showstopper question
#ASK0323-191
#Author Natalia Beliaeva
Feature:
  @feature1
    Scenario: Auto graded quiz w/out textual question as passed
    Given I open url "http://ask-int.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    And I type "toes191@greendike.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "Test123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 5 sec
    #create new quiz
    Then I click on element with xpath " //h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "Auto graded - single choice without textual option" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 2 sec
    And I click on element with xpath "//div[contains(text(),'Single-Choice')]"
    And I wait for 1 sec
    Then I type "Question with showstopper" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
    Then I click on element with xpath "//input[@id='mat-checkbox-19-input']"
    Then I type "Question 2" into element with xpath "//textarea[@id='mat-input-36']"
    Then I type "wrong" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "right" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][2]"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 3 sec
    Then element with xpath "//mat-panel-title[contains(text(),'Auto gradad - single choice without textual option')]" should contain text "Auto gradad - single choice without textual option"
    And I wait for 5 sec
    #assign quiz to the student
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    Then I click on element with xpath "//span[contains(text(),'Auto graded - single choice without textual option')]"
    Then I click on element with xpath "//span[contains(text(),'Nataa Student')]"
    And I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present
    And I click on element with xpath "//h5[contains(text(),'Log Out')]"
    And I click on element with xpath "//button[@type='button']"
    #login as a student
    Then I open url "http://ask-int.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    And I type "gacenkomixannik@wantwp.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "Test123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    #submit an assignment
    Then I click on element with xpath "//h5[contains(text(),'My Assignments')]"
    And element with xpath "//td[contains(text(),'Auto graded - single choice without textual option')]" should be present
    Then I click on element with xpath "//span[class='mat-button-wrapper'][1]"
    Then I click on element with xpath "//span[contains(text(),'Answer1')]"
    Then I click on element with xpath "//span[contains(text(),'wrong')]"
    Then I click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And I click on element with xpath "//h5[contains(text(),'Log Out')]"
    And I click on element with xpath "//button[@type='button']"
    Then I open url "http://ask-int.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    And I type "toes191@greendike.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "Test123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//ac-home-page[class='ng-star-inserted']" to be present
    #verify that quiz was graded automaticaly
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then I click on element with xpath "//div[@id='mat-tab-label-0-1']"
    Then element with xpath "//td[contains(text(),'Auto graded - single choice without textual option')]" should be present
    And element with xpath "//td[contains(text(),'Nataa Student')]" should have attribute "//td[@class='status']" as "PASSED"
    #delete quiz
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Auto graded - single choice without textual option')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Auto graded - single choice without textual option')]/../../..//button[@class='mat-raised-button mat-warn']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains(text(),'Delete')]"
    



