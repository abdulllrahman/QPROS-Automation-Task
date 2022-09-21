package stepdefs.web;

import core.Config;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;
import pages.web.mainPage.WebMainPageAbstract;
import pages.web.mainPage.WebMainPageLogic;

public class WebMainStepDefs {

    private WebMainPageAbstract page;
    SoftAssert softAssert;

    public WebMainStepDefs(Config config) {
        if (config.isWeb()) page = new WebMainPageLogic();
        softAssert = new SoftAssert();
    }

//    @Given("user open localHost:3000")
//    public void theUserOpenGoogleCom() {
//    }

    @Then("Capture WEB Events")
    public void captureWebEventsTest() {
        page.captureEvents();
    }

    @Then("Send WEB JS {string}")
    public void sendWebJS(String arg1) {
        page.sendJScript(arg1);
    }

    @Then("Validate WEB Element [{string} {string} {int}]")
    public void compareWebParameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.CompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #" + eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }

    @Then("Check WEB Events Count equal [{int}]")
    public void checkWebEventsCountEqual(int arg0) {
        softAssert.assertTrue(page.CheckEvents(arg0));
        softAssert.assertAll();
    }

    @Then("Check Presence of WEB Element [{string} {int}]")
    public void checkPresenceOfWebElement(String arg0, int arg1) {
        softAssert.assertTrue(page.CheckKeyPresence(arg0, arg1));
        softAssert.assertAll();
    }

    @Then("Click on [{string}]")
    public void clickOn(String arg0) throws InterruptedException {
        switch (arg0){
            case "About":
                page.ClickOnElement(page.Click_On_About);
                break;
            case "Subscribe":
                page.ClickOnElement(page.Click_On_Subscribe);
                break;
            case "SignUp":
                page.ClickOnElement(page.Click_On_SignUp);
                break;
            case "Already have account Button":
                page.ClickOnElement(page.Click_On_Already_Have_Account);
                break;
            case "Pricing":
                page.ClickOnElement(page.Click_On_Pricing);
                break;
            case "Login":
                page.ClickOnElement(page.Click_On_Login);
                break;
            case "Login Button":
                page.ClickOnElement(page.Click_On_LoginButton);
                break;
            case "Forgot Password":
                page.ClickOnElement(page.Click_On_ForgotPassword);
                break;
            case "Don't have Account Button":
                page.ClickOnElement(page.Click_On_Dont_Have_Account);
                break;
            case "Signupforfree":
                page.ClickOnElement(page.Click_On_SignUpforfree);
                break;
            case "GetStarted":
                page.ClickOnElement(page.Click_On_GetStarted);
                break;
            case "Contact Sales":
                page.ClickOnElement(page.Click_On_ContactSales);
                break;
            case "First MSISDN button":
                page.ScrollToAnElement(page.MSISDN_1234567890);
                page.ClickOnElement(page.MSISDN_1234567890);
                break;
            case "Second MSISDN button":
                page.ScrollToAnElement(page.NOT_MSISDN_12345NOT67890);
                page.ClickOnElement(page.NOT_MSISDN_12345NOT67890);
                break;
            case "Third MSISDN button":
                page.ScrollToAnElement(page.MSISDN_btn);
                page.ClickOnElement(page.MSISDN_btn);
                break;
            case "the fourth MSISDN button":
                page.ScrollToAnElement(page.NOT_MSISDN);
                page.ClickOnElement(page.NOT_MSISDN);
                break;
            case "Change Storage Type":
//                page.ScrollToAnElement(page.Change_Storage_Type);
                page.ClickOnElement(page.Change_Storage_Type);
                break;
            case "Get Started":
                page.ScrollToAnElement(page.getStarted);
                page.ClickOnElement(page.getStarted);
                break;
            case "Click on Fire SubPage":
                page.ScrollToAnElement(page.Click_On_Fire_Event_With_Subpage);
                page.ClickOnElement(page.Click_On_Fire_Event_With_Subpage);
                break;
            case "Click on Fire SubPage Others":
                page.ScrollToAnElement(page.Click_On_Fire_Event_With_Subpage_Others);
                page.ClickOnElement(page.Click_On_Fire_Event_With_Subpage_Others);
                break;
            case "Add Bug English":
                page.ScrollToAnElement(page.Add_Bug_English);
                page.ClickOnElement(page.Add_Bug_English);
                break;
            case "Add Bug Eng Dark":
                page.ScrollToAnElement(page.Add_Bug_Eng_Dark);
                page.ClickOnElement(page.Add_Bug_Eng_Dark);
                break;
            case "Add Bug Arabic":
                page.ScrollToAnElement(page.Add_Bug_Arabic);
                page.ClickOnElement(page.Add_Bug_Arabic);
                break;
             case "Add Bug Ara Dark":
                page.waitForVisibility(page.Add_Bug_Ara_Dark);
                page.ClickOnElement(page.Add_Bug_Ara_Dark);
                break;
            case "Type Description":
                page.waitForVisibility(page.Type_Description);
                page.ClickOnElement(page.Type_Description);
                break;
            case "Fire Event Clicked":
                page.waitForVisibility(page.Fire_Event_Clicked);
                page.ClickOnElement(page.Fire_Event_Clicked);
                break;
            case "Upload Image":
                page.waitForVisibility(page.Upload_Image);
                page.ClickOnElement(page.Upload_Image);
                break;
            case "Upload Image Arabic":
                page.waitForVisibility(page.Upload_Image_Arabic);
                page.ClickOnElement(page.Upload_Image_Arabic);
                break;
              case "Upload Image Eng Dark":
                page.waitForVisibility(page.Upload_Image_Eng_Dark);
                page.ClickOnElement(page.Upload_Image_Eng_Dark);
                break;  
            case "Click On Image":
                page.waitForVisibility(page.Click_On_Image);
                page.ClickOnElement(page.Click_On_Image);
                break;
            case "Click On Image Arabic":
                page.waitForVisibility(page.Click_On_Image_Arabic);
                page.ClickOnElement(page.Click_On_Image_Arabic);
                break;
            case "Click On Cancel":
                page.waitForVisibility(page.Click_On_Cancel);
                page.ClickOnElement(page.Click_On_Cancel);
                break;
            case "Click On Cancel Arabic":
                page.waitForVisibility(page.Click_On_Cancel_Arabic);
                page.ClickOnElement(page.Click_On_Cancel_Arabic);
                break;
             case "Click On Cancel English":
                page.waitForVisibility(page.Click_On_Cancel_English);
                page.ClickOnElement(page.Click_On_Cancel_English);
                break;
            case "Click On SubmitRequest":
                page.waitForVisibility(page.Click_On_Submit_Request);
                page.ClickOnElement(page.Click_On_Submit_Request);
                break;
            case "Click On SubmitRequest Arabic":
                page.waitForVisibility(page.Click_On_Submit_Request_Arabic);
                page.ClickOnElement(page.Click_On_Submit_Request_Arabic);
                break;
            case "Click On Cancel Report":
                page.waitForVisibility(page.Click_On_Cancel_Report);
                page.ClickOnElement(page.Click_On_Cancel_Report);
                break;
            case "Click On Cancel Report Arabic":
                page.waitForVisibility(page.Click_On_Cancel_Report_Ara);
                page.ClickOnElement(page.Click_On_Cancel_Report_Ara);
                break;
            default:
        }
    }

    @Then("Open new Tab and close")
    public void openNewTabAndClose() {
        page.openCloseNewTab();
    }
    
    @Then("Type Element [{string}]")
    public void TypeElement(String arg0) {
        page.TypeElement(page.Type_Description,arg0);
    }

    @Then("Validate WEB Element [{string} {string}] for event [{string} {string}]")
    public void validateElementForEvent(String key, String value, String eventType, String eventElement) {
        softAssert.assertTrue(page.validateEventElement(key, value, eventType, eventElement),
                "Wrong Event_type for Event #" + eventType + "  " + eventType +
                        " Expected Value: " + value + "for key: "  + key);
        softAssert.assertAll();
    }
}
