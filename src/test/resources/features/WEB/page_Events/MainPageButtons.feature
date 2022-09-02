Feature: Check Main Page

  Scenario: Check First Event When Clicked on SubPage Main Page
    Then Click on ["Click on Fire SubPage"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["subpage-name" "MainPage"] for event ["UICustom" "testelemen"]

  Scenario: Check Second Event When Clicked on SubPage Main Page
    Then Click on ["Click on Fire SubPage"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check First Event When Clicked on SubPage Others
    Then Click on ["Click on Fire SubPage Others"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["subpage-name" "Others"] for event ["UICustom" "testelemen"]

  Scenario: Check Second Event When Clicked on SubPage Others
    Then Click on ["Click on Fire SubPage Others"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "Fire Event with sub Page Others"] for event ["UIControl" "BUTTON - submit"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check Event When Clicked on Add Bug Report English
    Then Click on ["Add Bug English"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]

#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "Add Bug Report for English Language"] for event ["UIControl" "page"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check Event When Clicked on Add Bug Report Arabic
    Then Click on ["Add Bug Arabic"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]

#    Then Validate WEB Element ["event-type" "UIControl"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "Add Bug Report for Arabic Language"] for event ["UIControl" "BUTTON - submit"]
#    Then Validate WEB Element ["event-element" "BUTTON - submit"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]

