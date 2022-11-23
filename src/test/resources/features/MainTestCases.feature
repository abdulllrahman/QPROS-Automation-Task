Feature: Pet Clinic Main Test Cases
  
  Scenario: Check all the information added for the newly created owner and pet is correct
	When Click on element on Home Page ["Open Owners Page"]
	And Click on "Add Owner From Owners Page" Button
	And Add Owner
	And Click on "Add Pet From Owners Page" Button
	And Add Pet
	Then check newly added owner
	And check newly added pet for that owner
	
  Scenario: Find all the Veterinarians which are added in the application and print that list
	When Click on element on Home Page ["Open Veterinarians Page"]
	Then Find all the Veterinarians which are added and print that list
  
  Scenario: Find all the owners which are added in the application and print that list
	When Click on element on Home Page ["Open Owners Page"]
	And  Click on "Add Owner From Owners Page" Button
	Then Find all the existing owners which are added and print that list
  
  
  Scenario: Add a new owner, add pet for that owner.
	When Click on element on Home Page ["Open Owners Page"]
	And Click on "Add Owner From Owners Page" Button
	And Add Owner
	And Click on "Add Pet From Owners Page" Button
	And Add Pet
  
  Scenario: Open Home Page and Verify image on home page
	Then Verify image on home page
	