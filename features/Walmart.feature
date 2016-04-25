Feature: demo_for_walmart
  @walmart
  Scenario: Search
    Then Navigate to http://www.walmart.com
    Then Search for Ball
    Then Select second item from the list
    Then Select two items from drop down
    Then Click Add to Cart button
    Then Click View Cart button
    Then Verify that 2 items added to Cart
    Then Close browser

