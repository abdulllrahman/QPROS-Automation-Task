package pages.HomePage;

import base.WebPageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomeMainPO extends WebPageObjectBase {
    @FindBy(xpath = "//span[contains(text(),'Veterinarians')]")
    public WebElement VeterinariansIcon;

    @FindBy(xpath = "//body/nav[1]/div[1]/div[2]/ul[1]/li[2]/a[1]")
    public WebElement OwnersIcon;

    @FindBy(xpath = "/html/body/div/div/div[1]/div/img")
    public WebElement HomePageImage;









}
