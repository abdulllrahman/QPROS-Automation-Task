Feature: Check Bug Report Page

  Scenario: Check UIControl Event When Clicked on Upload Image
    Then Click on ["Add Bug English"]
    Then Click on ["Upload Image"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "INPUT - file"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "INPUT - file"]


  Scenario: Check UIControl Event When Clicked on Image
    Then Click on ["Add Bug English"]
    Then Capture WEB Events
    Then Click on ["Click On Image"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "DIV - div"]
#    Then Validate WEB Element ["event-element" "I - i"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "DIV - div"]

  Scenario: Check UIControl Event When Clicked on Cancel Image
    Then Click on ["Add Bug English"]
    Then Click on ["Click On Image"]
    Then Click on ["Click On Cancel Englisj"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "DIV - div"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "DIV - div"]

  Scenario: Check UIControl Event When Clicked on Submit Request
    Then Click on ["Add Bug English"]
    Then Click on ["Type Description"]
    Then Type Element ["TestEnglish"]
    Then Click on ["Click On SubmitRequest"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "Add Bug Report for English Language"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check UIControl Event When Clicked on Cancel Report
    Then Click on ["Add Bug English"]
    Then Click on ["Click On Cancel Report"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]



  Scenario: Check UIControl Event When Clicked on Upload Image DarkMode
    Then Click on ["Add Bug Eng Dark"]
    Then Click on ["Upload Image Eng Dark"]
    Then Capture WEB Events
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "INPUT - file"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "INPUT - file"]



  Scenario: Check UIControl Event When Clicked on Image Darkmode
    Then Click on ["Add Bug Eng Dark"]
    Then Click on ["Click On Image"]
    Then Capture WEB Events
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["seclib-client-version" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]


#///////////////////////////////////////////////////////////////////////////////////////
#  Scenario: Check UIControl Event When Clicked on Cancel Image Darkmode
#    Then Click on ["Add Bug Eng Dark"]
#    Then Click on ["Click On Image"]
#    Then Click on ["Click On Cancel English"]
#    Then Capture WEB Events
#    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/#/12345NOT67890"] for event ["UIControl" "I - i"]
#    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "I - i"]




  Scenario: Check UIControl Event When Clicked on Submit Request Darkmode
    Then Click on ["Add Bug Eng Dark"]
    Then Click on ["Type Description"]
    Then Type Element ["EnglishDarkMode"]
    Then Click on ["Click On SubmitRequest"]
    Then Capture WEB Events
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]



  Scenario: Check UIControl Event When Clicked on Cancel Report Darkmode
    Then Click on ["Add Bug Eng Dark"]
    Then Click on ["Click On Cancel Report"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]



