Feature: Check SignUp Page

  Scenario: Check first UICustom Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["subpage-name" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-authorization-id" "smapi-web-test"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

  Scenario: Check Second Component Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["UICustom" "Component"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["UICustom" "Component"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["UICustom" "Component"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["UICustom" "Component"]

  Scenario: Check Third Page Loaded  Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-element" "page-loaded"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["subpage-name" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-custom-authorization-id" "smapi-web-test"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-locale" "en-US"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-network-bearer" "4G"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-name" "Windows"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-version" "NT 4.0"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-mcc" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-mnc" "NA"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["x-vf-trace-platform" "JS"] for event ["Page" "page-loaded"]

  Scenario: Check Fourth Page dom loaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-element" "page-dom-loaded"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["subpage-name" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-custom-authorization-id" "smapi-web-test"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-locale" "en-US"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-mcc" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-mnc" "NA"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-network-bearer" "4G"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-name" "Windows"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-os-version" "NT 4.0"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-platform" "JS"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["Page" "page-dom-loaded"]

  Scenario: Check Fifth Navigation Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-element" "soft-navigation (asd)"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-network-bearer" "4G"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-os-name" "Windows"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-os-version" "NT 4.0"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-custom-authorization-id" "smapi-web-test"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["Page" "soft-navigation (asd)"]

  Scenario: Check Already have account Button in SignUp Page
    Then Click on ["SignUp"]
    Then Capture WEB Events
    Then Click on ["Already have account Button"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-element" "testelemen"] for event ["Page" "page"]
    Then Validate WEB Element ["event-description" "testdescription"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["page-name" "testonPage"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["subpage-name" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["device-orientation" "Landscape"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-band" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-net-type" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-authorization-id" "smapi-web-test"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson"] for event ["UICustom" "testelemen"]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson"] for event ["UICustom" "testelemen"]

#    Then Validate WEB Element ["event-type" "UICustom"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-element" "Component"] for event ["Page" "page"]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA"] for event ["UICustom" "Component"]

#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-element" "page-loaded"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["subpage-name" "NA"] for event ["Page" "page-loaded"]

#    Then Validate WEB Element ["event-element" "page-dom-loaded"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "page-dom-loaded"]

#    Then Validate WEB Element ["event-element" "soft-navigation (asd)"] for event ["Page" "page"]
#    Then Validate WEB Element ["event-type" "Page"] for event ["Page" "page"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost"] for event ["Page" "soft-navigation (asd)"]


