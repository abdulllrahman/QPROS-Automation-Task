#  Button
#  "event-description": "Click - Acceder",
##  "event-element": "BUTTON - submit",
##  "event-type": "UIControl"

#  Checkbox
#  "event-description": "Click - on",
##  "event-element": "INPUT - checkbox",
##  "event-type": "UIControl"

#  Link
#  "event-description": "Click - Todo (URL: javascript:void(0);)",
##  "event-element": "A - a",
##  "event-type": "UIControl"

#  Image
#  "event-description": "Click - new-logo.png",
##  "event-element": "IMG - img",
##  "event-type": "UIControl"

Feature: Check About Page

  Scenario: Check Event when click on "SignUp for free"
    Then Click on ["Pricing"]
    Then Capture WEB Events
    Then Click on ["Signupforfree"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "Sign up for free"] for event ["UIControl" "BUTTON - submit"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]


  Scenario: Check Event when click on "Get Started"
    Then Click on ["Pricing"]
    Then Capture WEB Events
    Then Click on ["GetStarted"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "Get started"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check Event when click on "Contact Sales"
    Then Click on ["Pricing"]
    Then Capture WEB Events
    Then Click on ["Contact Sales"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "Contact Sales"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check UI Control event when clicking on "Change Storage Type"
    When Click on ["Change Storage Type"]
    Then Pause Time "1000" ms
    And Capture WEB Events
    Then Validate WEB Element ["event-description" "Change Storage Type"] for event ["UIControl" "BUTTON - submit"]
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page-loaded"]

  Scenario: Check UI Control event when clicking on "MSISDN - 1234567890" button
    When Click on ["First MSISDN button"]
    Then Pause Time "1000" ms
    And Capture WEB Events
    Then Validate WEB Element ["event-description" "MASKEDMSISDN0"] for event ["UIControl" "BUTTON - submit"]
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page-loaded"]

  Scenario: Check UI Control event when clicking on "NOT MSISDN 12345NOT6789" button
    When Click on ["Second MSISDN button"]
    Then Pause Time "1000" ms
    And Capture WEB Events
    Then Validate WEB Element ["event-description" "NOT MSISDN - 12345NOT67890"] for event ["UIControl" "BUTTON - submit"]
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page-loaded"]

  Scenario: Check UI Control event when clicking on "MSISDN" button
    When Click on ["Third MSISDN button"]
    Then Pause Time "1000" ms
    And Capture WEB Events
    Then Validate WEB Element ["event-description" "MSISDN (URL: http://localhost:3000/#/MASKEDMSISDN0)"] for event ["UIControl" "A - a"]
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "A - a"] for event ["Page" "page-loaded"]

  Scenario: Check UI Control event when clicking on "NOT MSISDN" button
    When Click on ["the fourth MSISDN button"]
    Then Pause Time "1000" ms
    And Capture WEB Events
    Then Validate WEB Element ["event-description" "NOT MSISDN (URL: http://localhost:3000/#/12345NOT67890)"] for event ["UIControl" "A - a"]
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "A - a"] for event ["Page" "page-loaded"]

  Scenario: Check Event when Click on Forgot Password
    Then Click on ["Login"]
    Then Capture WEB Events
    Then Click on ["Forgot Password"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "A - a"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "Forgot password (URL: http://localhost:3000/login.html#)"] for event ["UIControl" "A - a"]
