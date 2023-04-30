#ASK test scenarios

@asktest
Feature: ASK test scenarios

  @asktest1
  Scenario: ASK scenario 1
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    And I type "annapcsteacher2@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(),'TEACHER')]" should be present
    Then I click on element with xpath " //h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
     #Then I wait for 3 sec
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "01 Dasha L Quiz name" into element with xpath "//input[@formcontrolname='name']"
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
    Then element with xpath "//mat-panel-title[contains(text(),'01 Dasha L Quiz name')]" should contain text "01 Dasha L Quiz name"
    And I wait for 5 sec

   #delete the quiz
    Then I click on element with xpath "//mat-expansion-panel-header[@id='mat-expansion-panel-header-16']"
    #Then I click on element with xpath "//mat-expansion-panel[@class='mat-expansion-panel ng-tns-c17-40 ng-star-inserted']"
    #Then I click on element with xpath "//button[@xpath='60']"
    Then I click on element with xpath "//span[contains(text(),'Delete')]"
    
    And I wait for 3 sec
    Then element with xpath "//mat-panel-title[contains(text(),'01 Dasha L Quiz name')]" should not be present