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

  Scenario: Check Page Loaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "page-loaded"]

  Scenario: Check Page dom loaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "page-dom-loaded"]

  Scenario: Check Navigation page Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "soft-navigation (asd)"]

  Scenario: Check Stay Time Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "Stay Time"]

  Scenario: Check Page View Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Page View"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "Page View"]

  Scenario: Check Unloaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "Unloaded"] for event ["Page" "NA"]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "NA"]

#    ///////////////////////////////////////////////////////////////////////////////////////////////

  Scenario: Check Page Loaded Event while c Page Loading
    Then Click on ["Pricing"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html"] for event ["Page" "page-loaded"]

  Scenario: Check Page dom Loaded Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html"] for event ["Page" "page-dom-loaded"]

  Scenario: Check Navigation page Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html"] for event ["Page" "soft-navigation (asd)"]

  Scenario: Check Stay Time Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html"] for event ["Page" "Stay Time"]

  Scenario: Check Page View Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "Page View"]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html"] for event ["Page" "Page View"]

  Scenario: Check Unloaded Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "Unloaded"] for event ["Page" "NA"]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html"] for event ["Page" "NA"]

    #    ///////////////////////////////////////////////////////////////////////////////////////////////

  Scenario: Chec Page-load events while home page loading
    When Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["Page" "page-loaded"]

  Scenario: Check Page-dom-loaded event while home page loading
    When Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-dom-loaded"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["Page" "page-dom-loaded"]

  Scenario: Check Page-dom-loaded event while home page loading
    When Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "soft-navigation (asd)"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["Page" "soft-navigation (asd)"]