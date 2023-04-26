#Automate test set ASK0323-236 of ASK application
#Author: Yu Gong
  @askTestCase
  Feature: Quiz - Updated At

    Background:
      Given I open url "http://ask-int.portnov.com/#/login"
      When I type "denaturnbow@gmailvn.net" into element with xpath "//input[@id='mat-input-0']"
      And I type "12345ABc" into element with xpath "//input[@id='mat-input-1']"
      Then I click on element with xpath "//button[@type='submit']"
      And I wait for 5 sec
      Then element with xpath "//p[contains(text(),'TEACHER')]" should be present

    @askTestCase1
    Scenario: Updated time for new quiz
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      And I wait for 2 sec
      Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "001 Yu G Test" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      #And I click on element with xpath "//div[contains(text(),'Single-Choice')]"
      And I wait for 1 sec
      Then I type "Single question name for quiz" into element with xpath "//textarea[@formcontrolname='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      And I wait for 3 sec
      Then element with xpath "//div[@class='quizzes']" should contain text "001 Yu G Test"
      And I wait for 5 sec

      #Check the updated time for new quiz
      Then I click on element with xpath "//div[@class='quizzes']/../../..//mat-panel-title[contains(text(),'001 Yu G Test')]"
      Then element with xpath "//mat-panel-title[contains(text(),'001 Yu G Test')]/../../..//tr[5]/td[2]" should be same as element with xpath "//mat-panel-title[contains(text(),'001 Yu G Test')]/../../..//tr[4]/td[2]"
