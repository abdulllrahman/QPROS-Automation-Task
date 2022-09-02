Feature: web demo

  Scenario: Check default User ID equal NA
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Validate WEB Element ["x-vf-user-id" "NA"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check User ID after setUserID by test
    Then Send WEB JS "sec.setUserID(\"test\")"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Validate WEB Element ["x-vf-user-id" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check User ID after setUserID by t e s t
    Then Send WEB JS "sec.setUserID(\"t e s t\")"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Validate WEB Element ["x-vf-user-id" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"] for event ["UIControl" "BUTTON - submit"]

  Scenario: Check User ID after setUserID by TEST
    Then Send WEB JS "sec.setUserID(\"TEST\")"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Validate WEB Element ["x-vf-user-id" "94ee059335e587e501cc4bf90613e0814f00a7b08bc7c648fd865a2af6a22cc2"] for event ["UIControl" "BUTTON - submit"]