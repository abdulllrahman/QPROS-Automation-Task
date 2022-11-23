package stepdefs;

import core.Config;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;
import pages.VeterinariansPage.VeterinariansPageAbstract;
import pages.VeterinariansPage.VeterinariansPageLogic;

public class VeterinariansPageStepDefs {

    private VeterinariansPageAbstract vetsPage;
    SoftAssert softAssert;

    public VeterinariansPageStepDefs(Config config) {
        if (config.isWeb()) vetsPage = new VeterinariansPageLogic();
        softAssert = new SoftAssert();
    }

    @Then("Find all the Veterinarians which are added and print that list")
    public void find_all_the_veterinarians_which_are_added_and_print_that_list() {
        vetsPage.printAllVeterinarians();
    }


}

