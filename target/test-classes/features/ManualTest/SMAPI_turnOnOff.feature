Feature: web demo

  Scenario: Check Events when SMAPI OFF
    Then Send WEB JS "sec.turnOnOff(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [2]

  Scenario: Check Events when SMAPI OFF then ON
    Then Send WEB JS "sec.turnOnOff(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [2]
    Then Send WEB JS "sec.turnOnOff(true)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [4]