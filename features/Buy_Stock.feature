Feature: Buy stock
  In order to buy a stock in my portfolio
  As a user
  I want to set the volume and execute the transaction.

  Scenario: Stock Purchase
    Given I have selected the stock I want to buy
    When I go to the transaction screen
    Then I should be able to set "Volume to Purchase"
    And Execute the transaction