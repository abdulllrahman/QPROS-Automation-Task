package base;

import com.google.gson.JsonObject;
import core.Hooks;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;
import java.util.Set;

public abstract class WebPageObjectBase {
    public WebDriver driver;
    WebDriverWait wait;
    Select selector;


    public WebPageObjectBase() {
        this.driver = Hooks.getWebDriver();
        PageFactory.initElements(this.driver, this);
        wait = new WebDriverWait(driver, 60);
    }
    public void waitForVisibility(WebElement element) {
        wait.until(ExpectedConditions.visibilityOf(element));
    }

    public void clickOnElement(WebElement element) {
        waitForVisibility(element);
        element.click();
    }

    public Boolean veirfyImageStatus(WebElement element) {
       return (Boolean) ((JavascriptExecutor)driver) .executeScript("return arguments[0].complete " + "&& typeof arguments[0].naturalWidth != \"undefined\" " + "&& arguments[0].naturalWidth > 0", element);
    }




    public void writeInTextField(WebElement element, String text) {
        element.sendKeys(text);
    }

    public void SelectFromDropdownlist(WebElement element, String text) {
        selector=new Select(element);
        selector.selectByVisibleText(text);
    }

    public void PrintTableData(WebElement table) {
        wait.until(ExpectedConditions.visibilityOf(table));

        // Get all the table row elements from the table
        List<WebElement> allRows = table.findElements(By.tagName("tr"));

       // And iterate over them and get all the cells
        for (WebElement row : allRows) {
            List<WebElement> cells = row.findElements(By.tagName("td"));

            // Print the contents of each cell
            for (WebElement cell : cells) {
                System.out.println(cell.getText());
                System.out.println("------------------------------------");
            }
        }

    }
}
