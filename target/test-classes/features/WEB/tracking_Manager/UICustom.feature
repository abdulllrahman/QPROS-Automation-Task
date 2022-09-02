Feature: Check About Page

#Then Validate WEB Element ["event-description" "NA"] for event ["Page" "page-loaded"]
#Then Validate WEB Element ["event-elemen" "NA"] for event ["Page" "page-loaded"]
##Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["Page" "page-loaded"]
#Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["Page" "page-loaded"]

  Scenario: Check first UICustom Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check Second UICustom Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "Component"]

  Scenario: Check first UICustom Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check Second UICustom Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "Component"]

  Scenario: Check UICustom Page-load event 1
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check UICustom Page-load event 2
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "{\\"] for event ["UICustom" "Component"]

  Scenario: Check first UICustom Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check Second UICustom Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "{\\"] for event ["UICustom" "Component"]

  Scenario: Check UICustom Subscribe Events in About Page
    Then Click on ["About"]
    Then Click on ["Subscribe"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check first UICustom Event while Login Page Loading
    Then Click on ["Login"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check Second UICustom Event while Login Page Loading
    Then Click on ["Login"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "Component"]

  Scenario: Check UICustom Event when Click on Login Button
    Then Click on ["Login"]
    Then Capture WEB Events
    Then Click on ["Login Button"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "Component"]

  Scenario: Check UICustom Event when Click on Don't have account Button
    Then Click on ["Login"]
    Then Capture WEB Events
    Then Click on ["Don't have Account Button"]
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page-loaded"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "Component"]