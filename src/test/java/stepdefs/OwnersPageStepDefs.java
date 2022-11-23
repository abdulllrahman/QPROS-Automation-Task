package stepdefs;

import core.Config;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;
import pages.OwnersPage.OwnersPageAbstract;
import pages.OwnersPage.OwnersPageLogic;
import pages.VeterinariansPage.VeterinariansPageAbstract;
import pages.VeterinariansPage.VeterinariansPageLogic;

public class OwnersPageStepDefs {

    private OwnersPageAbstract ownersPage;
    SoftAssert softAssert;

    public OwnersPageStepDefs(Config config) {
        if (config.isWeb()) ownersPage = new OwnersPageLogic();
        softAssert = new SoftAssert();
    }


    @Then("Find all the existing owners which are added and print that list")
    public void find_all_the_owners_which_are_added_and_print_that_list() {
        ownersPage.printAllOwners();
    }


    @And("Click on {string} Button")
    public void clickOnElementOnOwnersPageButton(String arg0) {
        ownersPage.clickOnElementOnOwnersPage(arg0);
    }

    @And("Add Owner")
    public void addOwner() {
        ownersPage.addOwner();
    }

    @And("Add Pet")
    public void addPet() throws InterruptedException {
        ownersPage.addPet();
    }

    @Then("check newly added owner")
    public void checkNewlyAddedOwner() {
        ownersPage.verifyNewlyAddedOwner();
    }

    @And("check newly added pet for that owner")
    public void checkNewlyAddedPetForThatOwner() throws InterruptedException {
        ownersPage.verifyNewlyAddedPet();
    }


}

