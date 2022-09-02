package base;

/*
	 * This class is responsible to capture logs from android emulator and Web Browser
	 * after capturing the logs it start parsing the logs into events
	 *
	 * Example of event:
	 *
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-type": "Application",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "device-orientation": "Portrait",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-transaction-id": "5e82bcf5-00f9-4ee3-af4c-802673251a19",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-timestamp": 1633350268535,
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-session-id": "50195252-8742-45b9-8a7d-45877faa83ce",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-net-type": "WiFi",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-net-band": "NA",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-app-state": "Foreground",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-description": "6.739 sec",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-element": "AppLaunch",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "page-name": "Main",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "subpage-name": "NA",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-user-id": "NA",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-tid": "NA"
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB: }
	*/

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import com.google.gson.JsonObject;
import io.appium.java_client.MobileDriver;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.logging.LogEntry;
import org.openqa.selenium.logging.LogType;

public class LogCapture {
    private static JsonObject[] jsonList;
    private static JsonObject jsonFLUSH;
    private static int currentDbCount;
    private static int flushCountSize;
    private static int Total_event_size;
    private static int Total_unique_event_size;
    private static int webEventsCount;

    public JsonObject getFLUSHEvent() {
        return jsonFLUSH;
    }

    public int getCurrentDbCount() {
        return currentDbCount;
    }

    public int getFlushCountSize() {
        return flushCountSize;
    }

    public int getTotal_event_size() {
        return Total_event_size;
    }

    public int getTotal_unique_event_size() {
        return Total_unique_event_size;
    }

    public static int getWebEventsCount() {
        return webEventsCount;
    }

    /**
     * @return the saved captured logs from android emulator
     * @author Shaher Amin
     */
    public static JsonObject[] getLogs() {
        return jsonList;
    }

    /**
     * @author Shaher Amin
     * Clear log from android emulator
     */
    public static void clearLog() {
        try {
            Process process = new ProcessBuilder()
                    .command("logcat", "-c")
                    .redirectErrorStream(true)
                    .start();
        } catch (IOException e) {
        }
    }

    public void SendJSScript(WebDriver driver, String arg) {
//		((JavascriptExecutor) driver).executeScript("sec.setUserID(\"test\")");
        ((JavascriptExecutor) driver).executeScript(arg);
    }

    /**
     * @param driver
     * @return Captured Logs browser console
     * @author Shaher Amin
     */
    public JsonObject[] captureWebEvents(WebDriver driver) {
        jsonList = new JsonObject[20];
        List<LogEntry> entries = driver.manage().logs().get(LogType.BROWSER).getAll();
//		entries = driver.manage().logs().get(LogType.PERFORMANCE).getAll();
//		entries = driver.manage().logs().get(LogType.SERVER).getAll();

        for (LogEntry entry : entries) {
            if (entry.getMessage().contains("current events count")) {
//				System.out.println(entry.getMessage());
                String EventsCount = entry.getMessage().substring(entry.getMessage().lastIndexOf(": ")).replaceAll("[^0-9]", "");
                ;
                webEventsCount = Integer.parseInt(EventsCount);
            }
            if (entry.getMessage().contains("[{") && entry.getMessage().contains("}]")) {
                int eventIndex = 0;
                String msgDefault = entry.getMessage().substring(entry.getMessage().indexOf("[{"), entry.getMessage().length() - 1);
                String msg = msgDefault.replaceAll("]", ",{");
                String[] msglist = StringUtils.substringsBetween(msg, "{", "}");

                Boolean pageView =false;
                for (String event : msglist) {
                    if (event.contains("url") && !event.contains("event-description"))
                        continue;
                    if (pageView){
                        eventIndex--; pageView = false;
                    }else {
                        jsonList[eventIndex] = new JsonObject();
                    }
                    if (event.contains("url") && event.contains("event-description")) {
                        pageView = true;
                    }
                    String[] elements = event.split(",");
                    for (String element : elements) {
                        String key = null;
                        String value = null;
                        String[] elementList = StringUtils.substringsBetween(element, "\\\"", "\\\"");
                        try {
                            key = elementList[0];
                            value = elementList[1];
                            jsonList[eventIndex].addProperty(key, value);
                        } catch (NullPointerException e) {
                        } catch (ArrayIndexOutOfBoundsException e) {
                        }
                    }
                    eventIndex++;
                }
            }
        }
        return jsonList;
    }

    /**
     * @param driver
     * @return Captured Logs from android emulator
     * @author Shaher Amin
     */
    public JsonObject[] captureAndroidEvents(WebDriver driver) {
        jsonList = new JsonObject[10];
        jsonFLUSH = new JsonObject();

        List<LogEntry> entries = driver.manage().logs().get("logcat").filter(Level.ALL);
        int eventIndex = 0;

        for (LogEntry entry : entries) {
            String msg = entry.getMessage();

            if (msg.contains("seclibng.interfaces.CoreManager: Flush Count =")) {
                flushCountSize = Integer.parseInt(msg.substring(msg.lastIndexOf("Flush Count = ") + "Flush Count = ".length(), msg.length()));
            }
            if (msg.contains("seclibng.interfaces.CoreManager: Event Count =")) {
                Total_event_size = Integer.parseInt(msg.substring(msg.lastIndexOf("Event Count = ") + "Event Count = ".length(), msg.length()));
            }

            if (entry.getMessage().contains("seclibng.interfaces.CoreManager: {") && entry.getMessage().contains("}")) {
                msg = entry.getMessage().substring(entry.getMessage().lastIndexOf("seclibng.interfaces.CoreManager: {") + 1, entry.getMessage().length() - 1);

                boolean netw = false;
                if (msg.contains("\"event-type\":\"Network\""))
                    netw = true;

                jsonList[eventIndex] = new JsonObject();
                String[] elements = msg.split(",");
                for (String element : elements) {
                    String key = null;
                    String value = null;
                    String[] elementList = StringUtils.substringsBetween(element, "\"", "\"");
                    try {
                        key = elementList[0];
                        value = elementList[1];
                        if (key.contains("requestDate") ||
                                key.contains("endPoint") ||
                                key.contains("responseCode") ||
                                key.contains("responseTimeinMS") ||
                                key.contains("protocol") ||
                                key.contains("responseContentType") ||
                                key.contains("responseMessage"))
                        {
                            continue;
                        }else {
                            jsonList[eventIndex].addProperty(key, value);
                        }
                    } catch (NullPointerException e) {
                    } catch (ArrayIndexOutOfBoundsException e) {
                    }
                }
//				}
                eventIndex++;
            }

        }
        return jsonList;
    }

//    /**
//     * @param driver
//     * @return Captured Logs from android emulator
//     * @author Shaher Amin
//     */
//    public JsonObject[] captureAndroidRNEvents(MobileDriver driver) {
//        jsonList = new JsonObject[10];
//        jsonFLUSH = new JsonObject();
//
//        List<LogEntry> logEntries = driver.manage().logs().get("logcat").filter(Level.ALL);
//        int eventIndex = 0;
//
//        for (int j = 0; j < logEntries.size(); j++) {
//            String key = null;
//            String value = null;
//            String msg = logEntries.get(j).getMessage();
//
//            if (msg.contains("SqliteDB: currentDbCount")) {
//                currentDbCount = Integer.parseInt(msg.substring(msg.lastIndexOf("currentDbCount:") + "currentDbCount:".length(), msg.length()));
//            }
//            if (msg.contains("SqliteDB: flushCountSize")) {
//                flushCountSize = Integer.parseInt(msg.substring(msg.lastIndexOf("flushCountSize:") + "flushCountSize:".length(), msg.length()));
//            }
//            if (msg.contains("ProtocolTag: Total event size")) {
//                Total_event_size = Integer.parseInt(msg.substring(msg.lastIndexOf("Total event size:") + "Total event size:".length(), msg.length()));
//            }
//            if (msg.contains("ProtocolTag: Total unique event size")) {
//                Total_unique_event_size = Integer.parseInt(msg.substring(msg.lastIndexOf("Total unique event size:") + "Total unique event size:".length(), msg.length()));
//            }
//            ///////////////////////////////////////////////Event Capture//////////////////////////////////////////////////////
//            // Capture Flush Event
//            // "Protocol.sendEvents: Sending Events with Headers: {"
//			/*
//			2021-12-15 11:40:21.358 10671-10710/com.vodafone.react.smapi.test I/SecLib:SqliteDB: currentDbCount:8
//			2021-12-15 11:40:21.358 10671-10710/com.vodafone.react.smapi.test I/SecLib:SqliteDB: flushCountSize:10
//			2021-12-15 11:40:21.397 10671-10740/com.vodafone.react.smapi.test I/SecLib:ProtocolTag: Total event size:8
//			2021-12-15 11:40:21.397 10671-10740/com.vodafone.react.smapi.test I/SecLib:ProtocolTag: Total unique event size:8
//			2021-12-15 11:40:21.436 10671-10740/com.vodafone.react.smapi.test I/SecLib:Protocol.sendEvents: Sending Events with Headers: {
//				"Content-Type": "application\/json",
//				"x-vf-trace-source": "android:com.vodafone.react.smapi.test",
//				"x-vf-trace-network-bearer": "NA",
//				"x-vf-trace-source-version": "1.0",
//				"x-vf-trace-subject-id": "eedb0625e5c6c490",
//				"x-vf-trace-subject-region": "us",
//				"install-id": "9df96b71-8a78-4fda-b945-1af79222bbd1",
//				"seclib-client-version": "5.2.1",
//				"x-vf-trace-platform": "Android",
//				"x-vf-trace-os-version": "R",
//				"x-vf-trace-application-name": "example",
//				"x-vf-trace-user-agent": "Dalvik\/2.1.0 (Linux; U; Android 11; Android SDK built for x86 Build\/RSR1.210210.001.A1);Device:Android SDK built for x86;Manufacturer:unknown",
//				"x-vf-trace-mcc": "310",
//				"x-vf-trace-mnc": "260",
//				"x-vf-trace-width": "2392",
//				"x-vf-trace-height": "1440",
//				"x-vf-trace-carrier-name": "NA",
//				"x-vf-trace-locale": "US"
//			}
//			*/
//            if (msg.contains("Protocol.sendEvents: Sending Events with Headers: {")) {
//                jsonFLUSH = new JsonObject();
//                for (int i = j + 1; i < logEntries.size(); i++) {
//                    String logMsg = logEntries.get(i).getMessage();
//                    if (logMsg.contains("SecLib:Protocol.sendEvents: }")) {
//                        j = i;
//                        break;
//                    }
//                    String[] slist = StringUtils.substringsBetween(logMsg, "\"", "\"");
//                    key = slist[0];
//                    value = slist[1];
//                    jsonFLUSH.addProperty(key, value);
//                }
//            }
//            // Capture Normal Event
//            // filter in logEntries List on the String contains Seclib
//            if (msg.contains("SecLib:SqliteDB: {")) {
//                jsonList[eventIndex] = new JsonObject();
//                //when the it contains "SecLib:SqliteDB: {" thant means I capurted the first line in the event
//                for (int i = j + 1; i < logEntries.size(); i++) {
//                    //loop on the following lines to capture an events and ends when it contains "}"
//                    String logMsg = logEntries.get(i).getMessage();
//
//                    if (logMsg.contains("SecLib:SqliteDB: }")) {
//                        eventIndex++;
//                        j = i;
//                        break;
//                    }
//                    // Parsing the line to catch the key in the event and its value
//                    /*
//                     * Example
//                     *
//                     * 10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-type": "Application",
//                     * Key = event-type
//                     * Value = Application
//                     */
//                    String[] slist = StringUtils.substringsBetween(logMsg, "\"", "\"");
//                    try {
//                        key = slist[0];
//                        value = slist[1];
//                    } catch (ArrayIndexOutOfBoundsException e) {
//                        if (key.equals("x-vf-trace-timestamp"))
//                            value = "NA";
//                        else {
//                            Assert.assertNull(slist[0], "No Key found");
//                        }
//                    }
//                    jsonList[eventIndex].addProperty(key, value);
//                }
//            }
//        }
//        return jsonList;
//    }

    public JsonObject[] captureIOSEvents(MobileDriver driver) {
        jsonList = new JsonObject[10];
        jsonFLUSH = new JsonObject();

//        List<LogEntry> logEntries = driver.manage().logs().get(LogType.SERVER).getAll();
        List<LogEntry> logEntries = driver.manage().logs().get("syslog").getAll();
        int eventIndex = 0;

        for (int j = 0; j < logEntries.size(); j++) {
            String key = null;
            String value = null;
            String msg = logEntries.get(j).getMessage();

            if (msg.contains("SecLib: ") && logEntries.get(j+1).getMessage().equals("{")) {
                jsonList[eventIndex] = new JsonObject();
                for (int i = j + 2; i < logEntries.size(); i++) {
                    String logMsg = logEntries.get(i).getMessage();

                    if (logMsg.equals("}")) {
                        eventIndex++;
                        j = i;
                        break;
                    }
                    String[] slist = StringUtils.substringsBetween(logMsg, "\"", "\"");
                    try {
                        key = slist[0];
                        if(key.equals("event-description") && logMsg.contains("responseCode")){
                            value = logMsg.substring(logMsg.lastIndexOf("responseCode") + "responseCode".length() + 8, logMsg.lastIndexOf("responseCode") + "responseCode".length() + 11);
                        }else {
                            value = slist[1];
                        }
                    }
                    catch (ArrayIndexOutOfBoundsException e) {}
                    catch (NullPointerException e) {}
                    jsonList[eventIndex].addProperty(key, value);
                }
            }
        }
        return jsonList;
    }
}