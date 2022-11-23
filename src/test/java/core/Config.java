package core;

import io.appium.java_client.remote.MobileCapabilityType;
import org.openqa.selenium.logging.LogType;
import org.openqa.selenium.logging.LoggingPreferences;
import org.openqa.selenium.remote.CapabilityType;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import static java.lang.Integer.parseInt;
import static java.lang.System.getProperty;
import static utils.PropertiesLoader.readPropertyFile;

public class Config {
    private final String platform;
    private final String browser;
    private final Map<String, Object> capabilities = new HashMap<>();
    private boolean isWeb;

    public static final String WORKSPACE = getProperty("user.dir");
    private String url;

    public Config() {
        Properties Prop = readPropertyFile("config/platform.properties");
        platform = System.getProperty("PLATFORM", Prop.getProperty("PLATFORM"));
        setCapabilitiesForPlatform(platform);

        Properties webProp = readPropertyFile("config/web.properties");
        browser = System.getProperty("Web", webProp.getProperty("Browser"));
    }

    private void setCapabilitiesForPlatform(String platform) {
        isWeb = platform.equalsIgnoreCase("web");
        if (isWeb) setWebCapabilities();
    }
    private void setWebCapabilities() {
        Properties webProp = readPropertyFile("config/web.properties");
        url = webProp.getProperty("URL");
        LoggingPreferences logPrefs = new LoggingPreferences();
        logPrefs.enable(LogType.PERFORMANCE, Level.ALL);
        logPrefs.enable(LogType.PROFILER, Level.ALL);
        logPrefs.enable(LogType.BROWSER, Level.ALL);
        logPrefs.enable(LogType.CLIENT, Level.ALL);
        logPrefs.enable(LogType.DRIVER, Level.ALL);
        logPrefs.enable(LogType.SERVER, Level.ALL);
        capabilities.put(CapabilityType.LOGGING_PREFS, "logPrefs");
//
    }

    //////////////////
    // Get and Sets //
    //////////////////
    String getPlatform() {
        return platform;
    }

    String getBrowser() {
        return browser;
    }

    public Map<String, Object> getCapabilities() {
        return capabilities;
    }
    public String getUrl() {
        return url;
    }
    public boolean isWeb() {
        return isWeb;
    }
}
