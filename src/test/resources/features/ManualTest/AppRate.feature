Feature: Check App Rate Page

  Scenario: Check UIControl Event When Clicked on Rate 1st Stars
    Then Click on ["Click On 1Rate Stars"]
    Then Pause Time "6000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "LI - li"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "LI - li"]

  Scenario: Check UIControl Event When Clicked on Rate 2nd Stars
    Then Click on ["Click On 2Rate Stars"]
    Then Pause Time "6000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "LI - li"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "LI - li"]

  Scenario: Check UIControl Event When Clicked on Rate 3rd Stars
    Then Pause Time "6000" ms
    Then Click on ["Click On 3Rate Stars"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "LI - li"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "LI - li"]

  Scenario: Check UIControl Event When Clicked on Rate 4th Stars
    Then Click on ["Click On 4Rate Stars"]
    Then Pause Time "6000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "LI - li"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "LI - li"]

  Scenario: Check UIControl Event When Clicked on Rate 5th Stars
    Then Click on ["Click On 5Rate Stars"]
    Then Pause Time "6000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "LI - li"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "LI - li"]

  Scenario: Check UIControl Event When Clicked on Submit
    Then Click on ["Click On 3Rate Stars"]
    Then Click on ["Submit Rate"]
    Then Pause Time "6000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - button"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - button"]

  Scenario: Check UIControl Event When Clicked on Not Now
    Then Click on ["Click On 3Rate Stars"]
    Then Click on ["NotNow Rate"]
    Then Pause Time "6000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - submit"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - submit"]


  Scenario: Check UIControl Event When Clicked on Cancel
    Then Click on ["Click On 3Rate Stars"]
    Then Pause Time "6000" ms
    Then Click on ["Cancel Rate"]
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "BUTTON - button"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "BUTTON - button"]


  Scenario: Check UIControl Event When Clicked on Rate Stars After 5 sessions
    Then Pause Time "6000" ms
    Then Open New Link
    Then Pause Time "6000" ms
    Then Open New Link
    Then Pause Time "6000" ms
    Then Open New Link
    Then Pause Time "6000" ms
    Then Open New Link
    Then Pause Time "6000" ms
    Then Click on ["Click On Rate Stars"]
    Then Pause Time "6000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "LI - li"]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/"] for event ["UIControl" "LI - li"]
   
