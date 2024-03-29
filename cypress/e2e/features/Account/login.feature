Feature: Login app

    Background:
        Given A user opens login page
    Scenario: Success login
        When A user enter correct username into input
        And A user enter correct password into input
        And A user clicks on the login button
        Then A user will be logged in to account
    Scenario: Incorrect username login
        When A user enter incorrect username "incorrect_username" into input
        And A user enter correct password into input
        And A user clicks on the login button
        Then The error message "Error: Incorrect login or password provided." is displayed
    Scenario: Incorrect password login
        When A user enter correct username into input
        And A user enter incorrect password "incorrect_password" into input
        And A user clicks on the login button
        Then The error message "Error: Incorrect login or password provided." is displayed