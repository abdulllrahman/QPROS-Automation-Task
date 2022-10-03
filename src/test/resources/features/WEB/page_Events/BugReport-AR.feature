Feature: Check Bug Report Page

  Scenario: Check UIControl Event When Clicked on Upload Image Arabic
    Then Click on ["Add Bug Arabic"]
    Then Click on ["Upload Image"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "INPUT - file"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "INPUT - file"]


  Scenario: Check UIControl Event When Clicked on Image
    Then Click on ["Add Bug Arabic"]
    Then Capture WEB Events
    Then Click on ["Click On Image"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "DIV - div"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "DIV - div"]

    #///////////////////////////////////////////////////////////////////////////////////////
#  Scenario: Check UIControl Event When Clicked on Cancel Image Arabic
#    Then Click on ["Add Bug Arabic"]
#    Then Click on ["Click On Image Arabic"]
#    Then Click on ["Click On Cancel Arabic"]
#    Then Capture WEB Events
#    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/#/12345NOT67890"] for event ["UIControl" "DIV - div"]
#    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "DIV - div"]

  Scenario: Check UIControl Event When Clicked on Submit Request
    Then Click on ["Add Bug Arabic"]
    Then Click on ["Type Description"]
    Then Type Element ["TestArabic"]
    Then Click on ["Click On SubmitRequest"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "ارسل الطلب"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check UIControl Event When Clicked on Cancel Report
    Then Click on ["Add Bug English"]
    Then Click on ["Click On Cancel Report"]
    Then Capture WEB Events

    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]


  Scenario: Check UIControl Event When Clicked on Upload Image DarkMode
    Then Click on ["Add Bug Ara Dark"]
    Then Click on ["Upload Image"]
    Then Capture WEB Events
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "INPUT - file"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "INPUT - file"]



  Scenario: Check UIControl Event When Clicked on Image Arabic DarkMode
    Then Click on ["Add Bug Ara Dark"]
    Then Click on ["Click On Image Arabic"]
    Then Capture WEB Events
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["seclib-client-version" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]


#///////////////////////////////////////////////////////////////////////////////////////
#  Scenario: Check UIControl Event When Clicked on Cancel Image Arabic DarkMode
#    Then Click on ["Add Bug Ara Dark"]
#    Then Click on ["Click On Image Arabic"]
#    Then Click on ["Click On Cancel"]
#    Then Capture WEB Events
#
#    Then Validate WEB Element ["event-description" "Close"] for event ["UIControl" "DIV - div"]
#    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "DIV - div"]



  Scenario: Check UIControl Event When Clicked on Submit Request Arabic DarkMode
    Then Click on ["Add Bug Ara Dark"]
    Then Click on ["Type Description"]
    Then Type Element ["ArabicDarkMode"]
    Then Click on ["Click On SubmitRequest"]
    Then Capture WEB Events
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]



  Scenario: Check UIControl Event When Clicked on Cancel Report Arabic DarkMode
    Then Click on ["Add Bug Ara Dark"]
    Then Click on ["Click On Cancel Report Arabic"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]




