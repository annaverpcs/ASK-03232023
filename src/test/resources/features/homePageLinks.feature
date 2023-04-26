#Automate test set ASK0323-286 of ASK application
#Author: Yu Gong
  @askTestcase
  Feature: Home page - links

    Background:
      Given I open url "http://ask-int.portnov.com/#/login"
      When I type "denaturnbow@gmailvn.net" into element with xpath "//input[@id='mat-input-0']"
      And I type "12345ABc" into element with xpath "//input[@id='mat-input-1']"
      Then I click on element with xpath "//button[@type='submit']"
      And I wait for 5 sec
      Then element with xpath "//p[contains(text(),'TEACHER')]" should be present

    @askTestcase1
    Scenario: Teacher home links - Go To Submissions
      Then I click on element with xpath "//span[contains(text(),'Go To Submissions')]"
      And I wait for 2 sec
      Then element with xpath "//h4[contains(text(),'Submissions')]" should be displayed