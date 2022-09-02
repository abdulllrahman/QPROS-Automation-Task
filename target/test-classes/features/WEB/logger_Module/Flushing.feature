Feature: web demo

  Scenario: Check Flushing Event
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [15]
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [1]

  Scenario: Check Flushing Events when Verbose OFF
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.setVerbose(false)"
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [5]

  Scenario: Check Flushing Events when Verbose OFF then ON
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.setVerbose(false)"
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Send WEB JS "sec.setVerbose(true)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [1]
#

  Scenario: Check Flushing Events when SMAPI OFF
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.turnOnOff(false)"
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [5]

  Scenario: Check Flushing Events when SMAPI OFF then ON
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.turnOnOff(false)"
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Send WEB JS "sec.turnOnOff(true)"
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [10]
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [1]