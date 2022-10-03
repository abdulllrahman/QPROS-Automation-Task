#  page-dom-loaded
#"event-description": "2.714 sec",
##"event-element": "page-dom-loaded",
##"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/ProductsAndServices/MainScreen"

#  page-loaded
#"event-description": "5.009 sec",
##"event-element": "page-loaded",
##"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/ProductsAndServices/MainScreen

#  Page View
#"event-description": [{"dns": 0,"duration": 0.008,"httpCode": "NA","redirect": 0,"request": 0,"response": 0,"ssl": 0,"start": 1.177,"tcp": 0,"type": "script","transferSize":123467"url": "https://assets-es.myvdf.aws.cps.vodafone.com/inline.bundle.js"}],
##"event-element": "Page View",
##"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/login"

#  Unloaded
#"event-description": "Unloaded",
##"event-element": "NA",
##"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/ProductsAndServices/MainScreen"

Feature: Check About Page

  Scenario: Check Stay Time Event while home Page Loading
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["Page" "Stay Time"]

  Scenario: Check Page View Event while home Page Loading
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Page View"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["Page" "Page View"]

  Scenario: Check Unloaded Event while home Page Loading
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "Unloaded"] for event ["Page" "NA"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["Page" "NA"]

  Scenario: Check Third page Event while About Page Loading
    Then Click on ["About"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "page-loaded"]

  Scenario: Check Fourth page Event while About Page Loading
    Then Click on ["About"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "page-dom-loaded"]

  Scenario: Check Fifth page Event while About Page Loading
    Then Click on ["About"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "soft-navigation (asd)"]

  Scenario: Check Stay Time Event while About Page Loading
    Then Click on ["About"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "Stay Time"]

  Scenario: Check Page View Event while About Page Loading
    Then Click on ["About"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Page View"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "Page View"]

  Scenario: Check Unloaded Event while About Page Loading
    Then Click on ["About"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "Unloaded"] for event ["Page" "NA"]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html"] for event ["Page" "NA"]

    #    ///////////////////////////////////////////////////////////////////////////////////////////////

  Scenario: Check Page Loaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "page-loaded"]

  Scenario: Check Page dom loaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "page-dom-loaded"]

  Scenario: Check Navigation page Event while Login Page Loading
    Then Click on ["Login"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "soft-navigation (asd)"]

  Scenario: Check Stay Time Event while Login Page Loading
    Then Click on ["Login"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "Stay Time"]

  Scenario: Check Page View Event while Login Page Loading
    Then Click on ["Login"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Page View"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "Page View"]

  Scenario: Check Unloaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "Unloaded"] for event ["Page" "NA"]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html"] for event ["Page" "NA"]