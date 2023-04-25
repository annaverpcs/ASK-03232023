@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='gsc-wrapper']" to be present
    Then element with xpath "//div[@class='gsc-wrapper']" should contain text "Cucumber"

  Scenario: Predefined steps for DuckDuckGo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='searchbox_input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='links']" to be present
    Then element with xpath "//div[@id='links']" should contain text "Cucumber"

  Scenario: Predefined steps for swisscows
    Given I open url "https://swisscows.com/en"
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Cucumber"

  Scenario: Predefined steps for SearchEncrypt
    Given I open url "https://www.searchencrypt.com/home"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "Cucumber"

  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com/"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='search-btn']"
    #Then I wait for 2 sec
    Then I wait for element with xpath "//div[@id='main']" to be present
    Then element with xpath "//div[@id='main']" should contain text "Cucumber"

  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//section[@data-test-id='mainline']" to be present
    Then element with xpath "//section[@data-test-id='mainline']" should contain text "Cucumber"

  Scenario: Predefined steps for Wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@type='submit']"
    Then I should see page title as "Form is not secure"
    Then I click on element using JavaScript with xpath "//button[@id='proceed-button']"
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then I wait for element with xpath "//div[@id='inner-sbox']" to be present
    Then I wait for 2 sec
    Then element with xpath "//div[@id='inner-sbox']" should contain text "BDD"

  Scenario: Predefined steps for Givewater
    Given I open url "https://www.givewater.com/"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='layout__mainline']" to be present
    Then element with xpath "//div[@class='layout__mainline']" should contain text "BDD"

  Scenario: Predefined steps for Ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@id='serp_organic']" to be present
    Then I wait for 2 sec
    Then element with xpath "//div[@id='serp_organic']" should contain text "BDD"





  