Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture WEB Events

  Scenario: Check App Launch Events Logged in GCP
    Then Check GCP Event For Field Name ["x_vf_event_type"] equals ["Page"]
    Then Check GCP Event For Field Name ["x_vf_event_page"] equals ["BootsApp | Home-http://localhost:3000/"]
    Then Check GCP Event For Field Name ["x_vf_event_element"] equals ["page-loaded"]


  Scenario: Check UI Controls events Logged in GCP
    Then Click on ["Pricing"]
    Then Capture WEB Events
    Then Click on ["Signupforfree"]
    Then Capture WEB Events
    Then Check GCP Event For Field Name ["x_vf_event_type"] equals ["UIControl"]
    Then Check GCP Event For Field Name ["x_vf_event_element"] equals ["BUTTON - submit"]
    Then Check GCP Event For Field Name ["event_description"] equals ["Sign up for free"]

  Scenario: Check UICustom Event while SignUp Page Loading is logged in GCP
    Then Click on ["SignUp"]
    Then Capture WEB Events
    Then Check GCP Event For Field Name ["x_vf_event_type"] equals ["UICustom"]
    Then Check GCP Event For Field Name ["x_vf_event_element"] equals ["testelemen"]
    Then Check GCP Event For Field Name ["event_description"] equals ["testdescription"]

  Scenario: Check Field name of Events Logged in GCP
    Then Check GCP Event For Field Name ["x_vf_net_type"] equals ["WiFi"]
    Then Check GCP Event For Field Name ["x_vf_screen_rotation"] equals ["Portrait"]
    Then Check GCP Event For Field Name ["x_vf_trace_source"] equals ["android:com.vodafone.lib.sec.test"]
    Then Check GCP Event For Field Name ["x_vf_trace_subject_region"] equals ["eg"]
    Then Check GCP Event For Field Name ["x_vf_trace_accept_language"] equals ["en-eg"]
    Then Check GCP Event For Field Name ["x_vf_app_state"] equals ["Foreground"]
    Then Check GCP Event For Field Name ["x_vf_user_id"] equals ["NA"]