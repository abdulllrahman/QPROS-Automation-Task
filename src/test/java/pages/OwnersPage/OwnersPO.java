package pages.OwnersPage;

import base.WebPageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class OwnersPO extends WebPageObjectBase {

    @FindBy(xpath = "//button[contains(text(),'Owner')]")
    public WebElement findOwnerButton;

    @FindBy(id = "owners")
    public WebElement ownersTable;

    @FindBy(xpath = "//button[contains(text(),'Owner')]")
    public WebElement AddOwnerFromAddingOwnerPage;

    @FindBy(xpath = "//a[contains(text(),'Add Owner')]")
    public WebElement AddOwnerFromOwnersPage;

    @FindBy(id = "firstName")
    public WebElement firstName;

    @FindBy(id = "lastName")
    public WebElement lastName;

    @FindBy(id = "address")
    public WebElement address;


    @FindBy(id = "city")
    public WebElement city;

    @FindBy(id = "telephone")
    public WebElement telephone;

    @FindBy(linkText = "Add New Pet")
    public WebElement addNewPetButton;

    @FindBy(id = "name")
    public WebElement petName;

    @FindBy(id = "birthDate")
    public WebElement birthDate;

    @FindBy(id = "type")
    public WebElement petType;

    @FindBy(xpath = "//button[contains(text(),'Add Pet')]")
    public WebElement SubmitPet;

    @FindBy(xpath = "/html/body/div/div/table[1]")
    public WebElement ownerInfoTable;

    @FindBy(xpath = "/html/body/div/div/table[2]")
    public WebElement petsAndVisitsTable;

    @FindBy(xpath = "/html/body/div/div/h2[1]")
    public WebElement ownerInfoHeaderline;

    @FindBy(tagName = "/html/body/div/div/h2[2]")
    public WebElement PetsAndVisitsHeaderline;





















}
