@LoginProfile
Feature: Login Profile
  As an employee of the bank
  I want to login my employee profile using my credentials
  In order to perform actions

  Background: User navigates to Cyclos home page
    Given I am on the "Cyclos home" page on URL "https://demo.cyclos.org/ui/home"
    Then I should see "Login" in menu

  Scenario: Successful login
    When I fill in "User" with "demo"
    And I fill in "Password" with "1234"
    And I click on the "Submit" button
    Then I am on the "dashboard" page on URL "https://demo.cyclos.org/ui/dashboard"
    And I should see "Quick access" message
    And I should see the "Logout" button

  Scenario Outline: Failed login using wrong credentials
    When I fill in "User" with "<user>"
    And I fill in "Password" with "<password>"
    And I click on the "Submit" button
    And I should see "<warning>" message

    Examples: 
      | user  | password | warning                                                     |
      | demo1 |    12345 | The given name / password are incorrect. Please, try again. |
