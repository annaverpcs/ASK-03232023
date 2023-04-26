#Automate test set ASK0323-286 of ASK application
#Author: Yu Gong

@askTestcase
Feature: Teacher's Home page - links

  Background:
    Given I open url "http://ask-int.portnov.com/#/login"
    When I type "cartier2@hotbio.asia" into element with xpath "//input[@id='mat-input-0']"
    And I type "12345ABc" into element with xpath "//input[@id='mat-input-1']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present

  @askTestcase1
  Scenario: Student home links - Go To My Assignments
    Then I click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
    And I wait for 2 sec
    Then element with xpath "//mat-card[@class='page mat-card']" should be displayed

  @askTestcase2
  Scenario: Student home links - Go To My Grades
    Then I click on element with xpath "//span[contains(text(),'Go To My Grades')]"
    And I wait for 2 sec
    Then element with xpath "//mat-card[@class='page mat-card']" should be displayed

  @askTestcase3
  Scenario: Student home links - My Assignments
    Then I click on element with xpath "//h5[text()='My Assignments']"
    And I wait for 2 sec
    Then element with xpath "//mat-card[@class='page mat-card']" should be displayed

  @askTestcase4
  Scenario: Student home links - My Grades
    Then I click on element with xpath "//h5[text()='My Grades']"
    And I wait for 2 sec
    Then element with xpath "//mat-card[@class='page mat-card']" should be displayed

  @askTestcase5
  Scenario: Student home links - Settings
    Then I click on element with xpath "//h5[text()='Settings']"
    And I wait for 2 sec
    Then element with xpath "//mat-card[@class='mat-card']" should be displayed

