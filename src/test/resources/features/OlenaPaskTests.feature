#ASK tests User's management - Teacher - Delete User

@deleteusertests
  Feature: User's management - Teacher - Delete User

    @deleteusertests1
    Scenario: Delete logged-out student
      Given I open url "http://ask-int.portnov.com/"
      Then I should see page title contains "Assessment Control @ Portnov"
      Then I type "bricami@btcmod.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      And I click on element with xpath "//h5[contains(text(),'Management')]"
      Then I wait for element with xpath "//h4[contains(text(),'Management')]" to be present
      Then I click on element with xpath "//h4[contains(text(),'Rocco Baroccos')]"
      Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
      Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-accent']"
      And I wait for element with xpath "//mat-icon[contains(text(),'delete')]" to be present
      Then I click on element using JavaScript with xpath "//button[@role='menuitem'][4]"
      And I wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
      Then I click on element with xpath "//span[contains(text(),'Delete')]"
      Then element with xpath "//h4[contains(text(),'Rocco Baroccos')]" should not be present

    @deleteusertests2
      Scenario: Student login
        Given I open url "http://ask-int.portnov.com/"
        Then I should see page title contains "Assessment Control @ Portnov"
        Then I type "rocco4269@danygioielli.it" into element with xpath "//input[@formcontrolname='email']"
        Then I type "dmitrius1" into element with xpath "//input[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"

      Scenario: Delete logged-in student
        Given I open url "http://ask-int.portnov.com/"
        Then I should see page title contains "Assessment Control @ Portnov"
        Then I type "bricami@btcmod.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
        And I click on element with xpath "//h5[contains(text(),'Management')]"
        Then I wait for element with xpath "//h4[contains(text(),'Management')]" to be present
        Then I click on element with xpath "//h4[contains(text(),'Rocco Baroccos')]"
        Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
        Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-accent']"
        And I wait for element with xpath "//mat-icon[contains(text(),'delete')]" to be present
        Then I click on element using JavaScript with xpath "//button[@role='menuitem'][4]"
        And I wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Delete')]"
        Then element with xpath "//h4[contains(text(),'Rocco Baroccos')]" should not be present

    @deleteusertests3
      Scenario: Delete student who has not been assigned quizzes
        Given I open url "http://ask-int.portnov.com/"
        Then I should see page title contains "Assessment Control @ Portnov"
        Then I type "bricami@btcmod.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
        And I click on element with xpath "//h5[contains(text(),'Management')]"
        Then I wait for element with xpath "//h4[contains(text(),'Management')]" to be present
        Then I click on element with xpath "//h4[contains(text(),'Rocco Baroccos')]"
        Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
        Then element with xpath "//div[contains(text(),'No Assignments Yet')]" should be present
        Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-accent']"
        And I wait for element with xpath "//mat-icon[contains(text(),'delete')]" to be present
        Then I click on element using JavaScript with xpath "//button[@role='menuitem'][4]"
        And I wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Delete')]"
        Then element with xpath "//h4[contains(text(),'Rocco Baroccos')]" should not be present

    @deleteusertests4
      Scenario: Delete student who has been assigned quizzes
        Given I open url "http://ask-int.portnov.com/"
        Then I should see page title contains "Assessment Control @ Portnov"
        Then I type "bricami@btcmod.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
        And I click on element with xpath "//h5[contains(text(),'Management')]"
        Then I wait for element with xpath "//h4[contains(text(),'Management')]" to be present
        Then I click on element with xpath "//h4[contains(text(),'Rosa Spike')]"
        Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
        Then I wait for 3 sec
        Then element with xpath "//div[contains(text(),'No Assignments Yet')]" should not be present
        Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
        And I wait for element with xpath "//mat-icon[contains(text(),'delete')]" to be present
        Then I click on element using JavaScript with xpath "//button[@role='menuitem'][4]"
        And I wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Delete')]"
        Then element with xpath "//h4[contains(text(),'Rosa Spike')]" should not be present

    @deleteusertests5
      Scenario: Delete logged-out teacher
        Given I open url "http://ask-int.portnov.com/"
        Then I should see page title contains "Assessment Control @ Portnov"
        Then I type "bricami@btcmod.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
        And I click on element with xpath "//h5[contains(text(),'Management')]"
        Then I wait for element with xpath "//h4[contains(text(),'Management')]" to be present
        Then I click on element with xpath "//div[@class='mat-tab-label mat-ripple ng-star-inserted']"
        Then I click on element using JavaScript with xpath "//h4[contains(text(),'Gloria Junior')]"
        Then I wait for 3 sec
        Then I wait for element with xpath "//span[@class='mat-button-wrapper']" to be present
        Then I click on element with xpath "//span[@class='mat-button-wrapper']"
        And I wait for element with xpath "//mat-icon[contains(text(),'delete')]" to be present
        Then I click on element using JavaScript with xpath "//button[@role='menuitem'][3]"
        Then I wait for 3 sec
        And I wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Delete')]"
        Then element with xpath "//h4[contains(text(),'Gloria Junior')]" should not be present

    @deleteusertests6
      Scenario: Teacher login
        Given I open url "http://ask-int.portnov.com/"
        Then I should see page title contains "Assessment Control @ Portnov"
        Then I type "thuglord@btcmod.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "1234567" into element with xpath "//input[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        Then I wait for 5 sec

      Scenario: Delete logged-in teacher
        Given I open url "http://ask-int.portnov.com/"
        Then I should see page title contains "Assessment Control @ Portnov"
        Then I type "bricami@btcmod.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
        And I click on element with xpath "//h5[contains(text(),'Management')]"
        Then I wait for element with xpath "//h4[contains(text(),'Management')]" to be present
        Then I click on element with xpath "//div[@class='mat-tab-label mat-ripple ng-star-inserted']"
        Then I click on element using JavaScript with xpath "//h4[contains(text(),'Gloria Junior')]"
        Then I wait for 3 sec
        Then I wait for element with xpath "//span[@class='mat-button-wrapper']" to be present
        Then I click on element with xpath "//span[@class='mat-button-wrapper']"
        And I wait for element with xpath "//mat-icon[contains(text(),'delete')]" to be present
        Then I click on element using JavaScript with xpath "//button[@role='menuitem'][3]"
        Then I wait for 3 sec
        And I wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Delete')]"
        Then element with xpath "//h4[contains(text(),'Gloria Junior')]" should not be present











