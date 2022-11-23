package pages.OwnersPage;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import java.util.List;
import java.util.Properties;

import static utils.PropertiesLoader.readPropertyFile;

public class OwnersPageLogic extends OwnersPageAbstract {

    Properties testData = readPropertyFile("Data/ownerAndPetsData.properties");
    public OwnersPageLogic() {
        super();
    }


    @Override
    public void printAllOwners() {
        PrintTableData(ownersTable);
    }

    @Override
    public void clickOnElementOnOwnersPage(String arg0) {
        switch (arg0) {
            case "Find Owners":
                clickOnElement(findOwnerButton);
                break;
            case "Add Owner From Owners Page":
                clickOnElement(AddOwnerFromOwnersPage);
                break;
            case "Add Pet From Owners Page":
                clickOnElement(addNewPetButton);
                break;


            default:
        }
    }

    @Override
    public void addOwner() {
        writeInTextField(firstName,testData.getProperty("firstName"));
        writeInTextField(lastName,testData.getProperty("lastName"));
        writeInTextField(city,testData.getProperty("City"));
        writeInTextField(address,testData.getProperty("Address"));
        writeInTextField(telephone,testData.getProperty("Telephone"));
        clickOnElement(AddOwnerFromAddingOwnerPage);
    }

    @Override
    public void addPet() throws InterruptedException {
        Thread.sleep(4000);
        writeInTextField(petName,testData.getProperty("petName"));
        writeInTextField(birthDate,testData.getProperty("birthDate"));
        SelectFromDropdownlist(petType,testData.getProperty("Type"));
        clickOnElement(SubmitPet);
    }

    @Override
    public void verifyNewlyAddedOwner() {

        List<WebElement> allRows = ownerInfoTable.findElements(By.tagName("tr"));
        for (WebElement row : allRows) {
            WebElement cell = row.findElement(By.tagName("td"));
            WebElement headers = row.findElement(By.tagName("th"));
                if(headers.equals("Name")) {
                    //check owner name
                    Assert.assertEquals(cell.getText(), testData.getProperty("firstName")+testData.getProperty("lastName"));
                } else if (headers.equals("Address")) {
                    Assert.assertEquals(cell.getText(), testData.getProperty("Address"));
                }
                 else if (headers.equals("City")) {
                    Assert.assertEquals(cell.getText(), testData.getProperty("City"));
                }
                 else if (headers.equals("Telephone")) {
                    Assert.assertEquals(cell.getText(), testData.getProperty("Telephone"));
                }
        }

    }

    @Override
    public void verifyNewlyAddedPet() throws InterruptedException {
        List<WebElement> allRows = petsAndVisitsTable.findElements(By.tagName("dl"));
        System.out.println(allRows.get(0).getText().toString());
        Thread.sleep(4000);
        for (WebElement row : allRows) {
            List<WebElement> headers = row.findElements(By.tagName("dt"));
            List<WebElement> cells = row.findElements(By.tagName("dd"));
            for (int i=0;i<cells.size();i++) {
                if (headers.get(i).equals("Name")) {
                    System.out.println(cells.get(i).getText().toString());
                    Assert.assertEquals(cells.get(i).getText(), "ssssss");
                    System.out.println(cells.get(i).getText().toString());
                } else if (headers.get(i).equals("Birth Date")) {
                    System.out.println(cells.get(i).getText().toString());
                    Assert.assertEquals(cells.get(i).getText(), testData.getProperty("birthDate"));
                } else if (headers.get(i).equals("Type")) {
                    System.out.println(cells.get(i).getText().toString());
                    Assert.assertEquals(cells.get(i).getText(), testData.getProperty("Type"));
                }
            }

            }
        }

    }

