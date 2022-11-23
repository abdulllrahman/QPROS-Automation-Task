package core;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.WebDriver;

import java.net.MalformedURLException;

public class Hooks {

    private static WebDriver webDriver;
    private final Config config = new Config();
    private DriverFactory factory;

    public Hooks() {
        if (config.isWeb())
            setWebDriver(webDriver);
    }

    public static WebDriver getWebDriver() {
        return webDriver;
    }

    private static void setWebDriver(WebDriver driver) {
        Hooks.webDriver = driver;
    }

    private void closeDriver() {
        if (config.isWeb())
            Hooks.webDriver = null;

    }

    @Before(order = 1)
    public void beforeAll() throws MalformedURLException {
        factory = new DriverFactory(config.getUrl(), config.getCapabilities());

        if (config.isWeb())
            if (webDriver == null)
                setWebDriver(factory.createWebDriver());
    }

    @After()
    public void afterScenario(){
        if (config.isWeb())
            webDriver.quit();

        closeDriver();
        try { Thread.sleep(3000); } catch (Exception ign) {}
    }
}
