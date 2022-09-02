package base;

import com.google.gson.JsonObject;
import core.Hooks;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.Set;

public abstract class WebPageObjectBase {
    public WebDriver driver;
    WebDriverWait wait;
    LogCapture logCapture = new LogCapture();

    public WebPageObjectBase() {
        this.driver = Hooks.getWebDriver();
        PageFactory.initElements(this.driver, this);
        wait = new WebDriverWait(driver, 60);
    }

    public JsonObject[] captureAllWebEvents() {
        try { Thread.sleep(10000); } catch (Exception ign) {}
        JsonObject[] jsonList = logCapture.captureWebEvents(driver);
        return jsonList;
    }

    public boolean compareWebElement(String key, String value, int eventIndex) {
        return LogCompare.compareKeyValue(key, value, logCapture.getLogs()[eventIndex]);
    }

    public boolean CompareWebEvents(int eventCounts){
        return LogCompare.checkWebEventsCount(logCapture.getWebEventsCount(), eventCounts);
    }

    public boolean checkWebKeyPresence(String key, int eventIndex){
        return LogCompare.checkKey(key, logCapture.getLogs()[eventIndex]);
    }

    public void sendWebJS(String arg){
        logCapture.SendJSScript(driver, arg);
    }

    public void waitForVisibility(WebElement element) {
        wait.until(ExpectedConditions.visibilityOf(element));
    }

    public void openAndCloseNewTab() {
        String base = driver.getWindowHandle();
        ((JavascriptExecutor)driver).executeScript("window.open()");
        driver.switchTo().window(base);
    }

    public boolean checkEventElement(String key, String value, String eventType, String eventElement) {
        return LogCompare.compareEvent(logCapture.getLogs(), eventType, eventElement, key, value);
    }
}