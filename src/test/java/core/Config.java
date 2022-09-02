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
    private boolean isAndroid;
    private boolean isIos;
    private boolean isMobile;
    private boolean isWeb;
    public static final String WORKSPACE = getProperty("user.dir");
    private String url;

    public Config() {
        Logger.getLogger("org.openqa.core.remote").setLevel(Level.OFF);
        Properties Prop = readPropertyFile("config/platform.properties");
        platform = System.getProperty("PLATFORM", Prop.getProperty("PLATFORM"));
        setCapabilitiesForPlatform(platform);

        Properties webProp = readPropertyFile("config/web.properties");
        browser = System.getProperty("Web", webProp.getProperty("Browser"));
    }

    private void setCapabilitiesForPlatform(String platform) {
        isAndroid = platform.equalsIgnoreCase("Android");
        isIos = platform.equalsIgnoreCase("iOS");
        isWeb = platform.equalsIgnoreCase("web");
        if (isAndroid || isIos) isMobile = true;
        if (isAndroid) setAndroidCapabilities();
        if (isIos) setIosCapabilities();
        if (isWeb) setWebCapabilities();
    }

    private void setIosCapabilities() {
        Properties iosProp = readPropertyFile("config/ios.properties");
        url = getProperty("seleniumGrid", "http://0.0.0.0:4723/wd/hub");
        capabilities.put("deviceName", iosProp.getProperty("DEVICE_NAME"));
        capabilities.put("systemPort", parseInt(getProperty("systemPort", "8200")));
        capabilities.put("appiumVersion", "1.22.2");
        capabilities.put("newCommandTimeout", 90000);
        capabilities.put("adbExecTimeout", 200000);
        capabilities.put("platformVersion", iosProp.getProperty("PLATFORM_VERSION"));
        capabilities.put("platformName", "iOS");
        capabilities.put("noReset", false);
        capabilities.put("app", System.getProperty("IOS", iosProp.getProperty("APP")));
        capabilities.put("automationName", "XCUITest");
//        capabilities.put("udid", System.getProperty("UDID", iosProp.getProperty("UDID")));
//        capabilities.put("bundleId", "com.VIS.myvodafoneUK");
        capabilities.put("showIOSLog", "true");
        capabilities.put("skipLogCapture", "false");
        capabilities.put("fullContextList", "true");
        capabilities.put("browserName", "SampleApp");
        capabilities.put("showXcodeLog", "true");
        capabilities.put("setValue", true);

    }

    private void setAndroidCapabilities() {
        Properties androidProp = readPropertyFile("config/android.properties");
        url = System.getProperty("seleniumGrid", "http://0.0.0.0:4723/wd/hub");
        capabilities.put("deviceName", System.getProperty("DEVICE_NAME", androidProp.getProperty("DEVICE_NAME")));
        capabilities.put("systemPort", parseInt(getProperty("systemPort", "8200")));
        capabilities.put("appiumVersion", "1.22.2");
        capabilities.put("autoGrantPermissions", true);
        capabilities.put("appActivity", "");
        capabilities.put("appPackage", "");
        capabilities.put("autoAcceptAlerts", true);
        capabilities.put("newCommandTimeout", 90000);
        capabilities.put("androidInstallTimeout", 90000);
        capabilities.put("uiautomator2ServerInstallTimeout", 120000);
        capabilities.put("adbExecTimeout", 200000);
        capabilities.put("platformVersion", System.getProperty("PLATFORM_VERSION", androidProp.getProperty("PLATFORM_VERSION")));
        capabilities.put("platformName", "Android");
        capabilities.put("noReset", false);
        capabilities.put("app", WORKSPACE.concat(System.getProperty("Android", androidProp.getProperty("APP"))));
        capabilities.put("app-wait-activity", "");
        capabilities.put("clearDeviceLogsOnStart", true);
        capabilities.put("–session-override",true);
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
//        String browser = webProp.getProperty("URL");
//        capabilities.put("")
//        capabilities.put("browserName", "Chrome");
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

    public boolean isAndroid() {
        return isAndroid;
    }

    public boolean isIos() {
        return isIos;
    }

    public boolean isMobile() {
        return isMobile;
    }

    public boolean isWeb() {
        return isWeb;
    }
}
