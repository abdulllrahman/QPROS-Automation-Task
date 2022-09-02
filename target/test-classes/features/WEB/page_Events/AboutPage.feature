Feature: Check About Page

  Scenario: Check first Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["UICustom" "page"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["subpage-name" "testonSubpage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check Second Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "Component"]
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "Component"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "Component"]
#    Then Validate WEB Element ["subpage-name" "NA"] for event ["UICustom" "Component"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["UICustom" "Component"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["UICustom" "Component"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["UICustom" "Component"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["UICustom" "Component"]
#    Then Validate WEB Element ["x-vf-trace-source" "SMAPI_Presence"] for event ["UICustom" "Component"]
#    Then Validate WEB Element ["x-vf-trace-source-version" "SMAPI_Presence"] for event ["UICustom" "Component"]
#    Then Validate WEB Element ["x-vf-custom-authorization-id" "SMAPI_Presence"] for event ["UICustom" "Component"]


  Scenario: Check Third Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-element" "page-loaded"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["subpage-name" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-locale" "en-US"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-network-bearer" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-name" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-version" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-mcc" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-mnc" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-platform" "JS"] for event ["Page" "page-loaded"]


  Scenario: Check Fourth Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-element" "page-dom-loaded"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["subpage-name" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-locale" "en-US"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-mcc" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-mnc" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-network-bearer" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-name" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-version" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-platform" "JS"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["Page" "page-dom-loaded"]

  Scenario: Check Fifth Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-element" "soft-navigation (asd)"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-network-bearer" "4G"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-os-name" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-os-version" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
#    Then Validate WEB Element ["x-vf-custom-authorization-id" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["Page" "soft-navigation (asd)"]

  Scenario: Check Subscribe Events in About Page
    Then Click on ["About"]
    Then Click on ["Subscribe"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["subpage-name" "testonSubpage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-user-id" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["UICustom" "testelemen"]
#    Then Validate WEB Element ["x-vf-custom-authorization-id" "SMAPI_Presence"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]