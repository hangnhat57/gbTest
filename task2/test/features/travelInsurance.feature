Feature: Travel Insurance Result Page


  Scenario: Default Result Page should have at least 3 cards
    Given I am at homepage
    When I go to travel section
    And I click on Show My Result
    Then At least 3 cards are being displayed in Result Page




  Scenario: Verify min range slider functional
    Given I am at homepage
    When I go to travel section
    And I click on Show My Result
    When I Open all categories for filter
    When I move MIN slider of "Trip termination" to more than 30 percent
    Then "Trip termination" in all cards should be more than min value of slider


  Scenario: Verify dropdown list change destination
    Given I am at homepage
    When I go to travel section
    And I click on Show My Result
    When I change destination into "Singapore"
    Then Then result in nav should show correct that I travel to "Singapore"


  Scenario: Verify datepicker list change travel date
    Given I am at homepage
    When I go to travel section
    And I click on Show My Result
    And I select start date is "10 Jul 2020"
    And I select end date is "20 Jul 2020"
    Then result in nav should show correct that start date from "10 Jul 2020"
    Then result in nav should show correct that end date from "20 Jul 2020"


  Scenario: Verify radio button Policy Type
    Given I am at homepage
    When I go to travel section
    And I click on Show My Result
    When I change select policy type as "annual"
    Then result in nav should show correct that policy type is "annual"

  @run
  Scenario: Verify checkbox Isurer Filter
    Given I am at homepage
    When I go to travel section
    And I click on Show My Result
    When I select a random Insurer Filter
    Then I would see all cards should from that insurer

  @run
  Scenario: Verify radio Sort Low to High
    Given I am at homepage
    When I go to travel section
    And I click on Show My Result
    When I select a sort "Price: Low to high"
    Then I would see all cards should be sorted with price from Low to High