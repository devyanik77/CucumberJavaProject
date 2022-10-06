@DashboardPage
Feature: Dashboard Profile
  User should  be able to see Quick Access, Account status, Latest advertisements, Upcoming events

Background: Open the Chrome and User navigates to Cyclos home page
    Given user is on the "Cyclos home" page
    When user enters <username> and <password> and click on submit button
    Then user should be on dashboard page
    And I should see the "Log out" button

  Scenario: Pay User
    When user click on the Pay user
    And user select contact from <contact>
    And I fill in "Amount" with <amount>
    And user select in Scheduling from <scheduling>
    And user should write "Description" in <desc> 
    And user clicks on "Next"
    Then Payment confirmation should be displayed
    And user clicks on Confirm
    Then user should see "The payment was successfully processed" message  
     
    Examples:
      |contact|| amount    | scheduling   | desc   |
      |Andrey || 10        | Pay Now     | returning borrowing amount            |