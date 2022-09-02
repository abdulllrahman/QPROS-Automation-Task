Feature: web demo

  Scenario: Check Events when SMAPI OFF
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.turnOnOff(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [5]

  Scenario: Check Events when SMAPI OFF then ON
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.turnOnOff(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [5]
    Then Send WEB JS "sec.turnOnOff(true)"
    Then Click on ["Change Storage Type"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Check WEB Events Count equal [6]