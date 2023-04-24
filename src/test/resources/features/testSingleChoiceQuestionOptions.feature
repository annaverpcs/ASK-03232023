#Test set "Single Choice Question - Options
#Author Gulnoza Kasimova
  @asktest
  Feature: "Single Choice Question - Options


    @asktest1
    Scenario: Two options is created by defolt in a Single-Choice radio button selection
      Given I open url "http://ask-int.portnov.com/#/login"
      Then I should see page title contains "Assessment Control"
      And I type "hsood@nswgovernment.cf" into element with xpath "//input[@formcontrolname='email']"
      And I type "Zxcasd1" into element with xpath "//input[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then element with xpath "//p[contains(text(),'TEACHER')]" should be present
      Then I click on element with xpath " //h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present

