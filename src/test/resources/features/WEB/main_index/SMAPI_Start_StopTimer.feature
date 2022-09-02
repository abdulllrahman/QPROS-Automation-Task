Feature: web demo

  Scenario: Check Star/Stop timer event description by test
    Then Send WEB JS "sec.startTimer(12, 'test')"
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.stopTimer(12)"
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "soft-navigation (test)"] for event ["Page" "soft-navigation (test)"]

  Scenario: Check Star/Stop timer event description by TEST
    Then Send WEB JS "sec.startTimer(1, 'TEST')"
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.stopTimer(1)"
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "soft-navigation (TEST)"] for event ["Page" "soft-navigation (TEST)"]

  Scenario: Check Star/Stop timer event description by t e s t
    Then Send WEB JS "sec.startTimer(1, 'TE ST')"
    Then Pause Time "3000" ms
    Then Send WEB JS "sec.stopTimer(1)"
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "soft-navigation (TE ST)"] for event ["Page" "soft-navigation (TE ST)"]