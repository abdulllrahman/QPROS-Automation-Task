Feature: web demo

  Scenario: Check Events when Verbose OFF
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.setVerbose(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [5]

  Scenario: Check Events when Verbose OFF then ON
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.setVerbose(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [5]
    Then Send WEB JS "sec.setVerbose(true)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [7]