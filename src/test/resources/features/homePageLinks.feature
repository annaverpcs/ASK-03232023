#Automate test set ASK0323-286 of ASK application
#Author: Yu Gong
  @askTestcase
  Feature: Teacher's Home page - links

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

    @askTestcase2
    Scenario: Teacher home links - Go To Assignments
      Then I click on element with xpath "//span[contains(text(),'Go To Assignments')]"
      And I wait for 2 sec
      Then element with xpath "//mat-accordion[@class='mat-accordion']" should be displayed

    @askTestcase3
    Scenario: Teacher home links - Go To Users Management
      Then I click on element with xpath "//span[contains(text(),'Go To Users Management')]"
      And I wait for 2 sec
      Then element with xpath "//mat-card[@class='page mat-card']" should be displayed

    @askTestcase4
    Scenario: Teacher home links - Submissions
      Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
      And I wait for 2 sec
      Then element with xpath "//h4[contains(text(),'Submissions')]" should be displayed

    @askTestcase5
    Scenario: Teacher home links - Assignments
      Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
      And I wait for 2 sec
      Then element with xpath "//mat-accordion[@class='mat-accordion']" should be displayed

    @askTestcase6
    Scenario: Teacher home links - Quizzes
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      And I wait for 2 sec
      Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed

    @askTestcase7
    Scenario: Teacher home links - Users Management
      Then I click on element with xpath "//h5[contains(text(),'Management')]"
      And I wait for 2 sec
      Then element with xpath "//mat-card[@class='page mat-card']" should be displayed

    @askTestcase8
    Scenario: Teacher home links - Settings
      Then I click on element with xpath "//h5[contains(text(),'Settings')]"
      And I wait for 2 sec
      Then element with xpath "//mat-card[@class='mat-card']" should be displayed



