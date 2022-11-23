package stepdefs;

import core.Config;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;
import pages.HomePage.HomePageAbstract;
import pages.HomePage.HomePageLogic;

public class HomePageStepDefs {

    private HomePageAbstract page;
    SoftAssert softAssert;

    public HomePageStepDefs(Config config) {
        if (config.isWeb()) page = new HomePageLogic();
        softAssert = new SoftAssert();
    }

        @Then("Click on element on Home Page [{string}]")
        public void click_on(String arg0) {
        page.clickOnElementOnHomePage(arg0);

        }

    @Then("Verify image on home page")
    public void verify_image_on_home_page() {
        page.verifyImageOnHomePage();

    }
    }





