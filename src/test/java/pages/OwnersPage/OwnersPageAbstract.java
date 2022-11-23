package pages.OwnersPage;

import org.openqa.selenium.WebElement;

public abstract class OwnersPageAbstract extends OwnersPO {



    public abstract void printAllOwners();

    public abstract void clickOnElementOnOwnersPage(String arg0);
    public abstract void addOwner();

    public abstract void addPet() throws InterruptedException;

    public abstract void verifyNewlyAddedOwner();

    public abstract void verifyNewlyAddedPet() throws InterruptedException;











}
