Feature: 
  @TestRegGroupCode
  Scenario: Group code field validation
    Given I open url "http://ask-int.portnov.com/#/registration"
    Then element with xpath "//mat-card[@class='mat-card']" should be present
    Then I type "Nata" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Test" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "mail@test.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "As12**" into element with xpath "//input[@formcontrolname='group']"
    Then I type "Test123" into element with xpath "//input[@formcontrolname='password']"
    Then I type "Test123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"

  @DDTC
  Scenario Outline: DataDriven TC Positive
    Given I open url "http://ask-int.portnov.com/#/registration"
    Then element with xpath "//mat-card[@class='mat-card']" should be present
    Then I type "<Name>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Mail>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<GroupCode>" into element with xpath "//input[@formcontrolname='group']"
    Then I type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then I type "<ConfPassword>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Examples:
     | Name | LastName | Mail | GroupCode | Password | ConfPassword |
     | Nata | Test | mail@test.com | A1* | Test123 | Test123 |
     | Nata | Test1 | mail1@test.com | 1 | Test123 | Test123 |
     | Nata | Test2 | mail2@test.com | D | Test123 | Test123 |
     | Nata | Test3 | mail3@test.com | h | Test123 | Test123 |
     | Nata | Test4 | mail4@test.com | * | Test123 | Test123 |
     | Nata | Test5 | mail5@test.com | As12** | Test123 | Test123 |

  @DDTC
  Scenario Outline: DataDriven TC Negative
    Given I open url "http://ask-int.portnov.com/#/registration"
    Then element with xpath "//mat-card[@class='mat-card']" should be present
    Then I type "<Name>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Mail>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<GroupCode>" into element with xpath "//input[@formcontrolname='group']"
    And element with xpath "//mat-error[@role='alert']" should be present
    Then I type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then I type "<ConfPassword>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Examples:
      | Name | LastName | Mail | GroupCode | Password | ConfPassword |
      | Nata | Test6 | mail6@test.com |  | Test123 | Test123 |
      | Nata | Test7 | mail7@test.com | As12**5 | Test123 | Test123 |
      | Nata | Test8 | mail8@test.com | A  | Test123 | Test123 |
      | Nata | Test9 | mail9@test.com | d 7 | Test123 | Test123 |
      | Nata | Test10 | mail10@test.com | As1 ** | Test123 | Test123 |
      | Nata | Test11 | mail11@test.com | НАТА | Test123 | Test123 |