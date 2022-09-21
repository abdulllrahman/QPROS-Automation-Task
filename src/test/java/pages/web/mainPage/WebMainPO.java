package pages.web.mainPage;

import base.WebPageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class WebMainPO extends WebPageObjectBase {

    @FindBy(xpath = "/html[1]/body[1]/div[3]/div[1]/div[1]/p[1]/button[1]")
    public WebElement MSISDN_1234567890;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[2]")
    public WebElement NOT_MSISDN_12345NOT67890;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/a[1]")
    public WebElement MSISDN_btn;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/a[2]")
    public WebElement NOT_MSISDN;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[3]/div[1]/div/p/button[3]"),
    })
    public WebElement Change_Storage_Type;

    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[2]/a"),
    })
    public WebElement Click_On_About;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/div[2]/a"),
    })
    public WebElement Click_On_Already_Have_Account;
    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[5]/a"),
    })
    public WebElement Click_On_SignUp;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div/div/div/div[2]/div/form/button"),
    })
    public WebElement Click_On_Subscribe;

    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[3]/a"),
    })
    public WebElement Click_On_Pricing;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div[2]/div[1]/div[2]/button"),
    })
    public WebElement Click_On_SignUpforfree;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div[2]/div[2]/div[2]/button"),
    })
    public WebElement Click_On_GetStarted;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div[2]/div[3]/div[2]/button"),
    })
    public WebElement Click_On_ContactSales;

    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[4]/a"),
    })
    public WebElement Click_On_Login;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/form/div/a"),
    })
    public WebElement Click_On_ForgotPassword;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/form/button"),
    })
    public WebElement Click_On_LoginButton;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/div[2]/a"),
    })
    public WebElement Click_On_Dont_Have_Account;

    @FindBy(xpath = "/html/body/div[1]/div/div/a")
    public WebElement getStarted;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[4]")
    public WebElement Click_On_Fire_Event_With_Subpage;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[5]")
    public WebElement Click_On_Fire_Event_With_Subpage_Others;
@FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[6]")
    public WebElement Add_Bug_English;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[7]")
    public WebElement Add_Bug_Eng_Dark;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[8]")
    public WebElement Add_Bug_Arabic;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[9]")
    public WebElement Add_Bug_Ara_Dark;

    @FindBy(xpath = "//*[@id=\"text-area-smapi-bug-report-html-file\"]")
    public WebElement Type_Description;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[8]")
    public WebElement Fire_Event_Clicked;

    @FindBy(xpath = "//*[@id=\"smapi-browse\"]")
    public WebElement Upload_Image;

    @FindBy(xpath = "//*[@id=\"smapi-browse\"]")
    public WebElement Upload_Image_Arabic;

    @FindBy(xpath = "//*[@id=\"smapi-browse\"]")
    public WebElement Upload_Image_Eng_Dark;

    @FindBy(xpath = "//*[@id=\"smapiBugReportAttachmentsArray\"]/div[1]/div/img")
    public WebElement Click_On_Image;

    @FindBy(xpath = "//*[@id=\"smapiBugReportAttachmentsArray\"]/div[1]/div/img")
    public WebElement Click_On_Image_Arabic;

    @FindBy(xpath = "//*[@id=\"smapiBugReportModalce54254b-72b6-409a-9802-f7b9b85bd325\"]/div/div/div/div/svg")
    public WebElement Click_On_Cancel;

    @FindBy(xpath = "//*[@id=\"smapiBugReportModal32d25ad7-a673-47fb-8759-b07d7d6188c3\"]/div/div/div/div/svg")
    public WebElement Click_On_Cancel_Arabic;

    @FindBy(xpath = "//*[@id=\"smapiBugReportModal3667bd96-171b-4e70-9e35-2328bb012553\"]/div/div/div/div/svg")
    public WebElement Click_On_Cancel_English;

    @FindBy(xpath = "//*[@id=\"submit-smapi-bug-report-html-file\"]")
    public WebElement Click_On_Submit_Request;

    @FindBy(xpath = "//*[@id=\"submit-smapi-bug-report-html-file\"]")
    public WebElement Click_On_Submit_Request_Arabic;

    @FindBy(xpath = "//*[@id=\"smapi-close-icon-white\"]")
    public WebElement Click_On_Cancel_Report;

    @FindBy(xpath = "//*[@id=\"smapi-bug-report\"]/div[1]/button")
    public WebElement Click_On_Cancel_Report_Ara;




}
