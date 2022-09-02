package stepdefs.GCP;

import base.GCP;
import base.LogCapture;
import com.google.gson.JsonObject;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;

public class MyStepdefs {
    SoftAssert softAssert = new SoftAssert();

    @Then("Check GCP Event For Field Name [{string}] equals [{string}]")
    public void checkGCPEventForFieldNameEquals(String arg0, String arg1) {
        JsonObject[] jsonList = LogCapture.getLogs();
        softAssert.assertEquals(GCP.compare(jsonList, arg0, arg1), arg1);
        softAssert.assertAll();
//        throw new io.cucumber.java.PendingException();
    }
}
