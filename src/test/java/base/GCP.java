package base;

import com.google.auth.oauth2.ServiceAccountCredentials;
import com.google.cloud.bigquery.*;
import com.google.gson.JsonObject;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicInteger;

import static utils.PropertiesLoader.readPropertyFile;

public class GCP {

    public static final Properties gcpProp = readPropertyFile("config/GCP.properties");

    public static String compare(JsonObject[] jsonList, String key, String value) {
        String sessionID = jsonList[0].get("x-vf-trace-session-id").getAsString();

        try {
            Thread.sleep(15000);
        } catch (Exception ign) {
        }
        TableResult results = setquery(sessionID, key);

        HashMap<Integer, String> hM = new HashMap<>();
        AtomicInteger i = new AtomicInteger();
        results.iterateAll().forEach(row -> row.forEach(val -> hM.put(i.addAndGet(1), val.getStringValue())));

        int j;
        for (j = 0; j < hM.size(); j++) {
            if (hM.get(j+1).equals(value))
                return hM.get(j+1);
        }
        return hM.get(j+1);
    }

    public static TableResult setquery(String sessionID, String key) {
//        Properties gcpProp = readPropertyFile("config/GCP.properties");
        String projectId = gcpProp.getProperty("projectId");
        String datasetName = gcpProp.getProperty("datasetName");
        String tableName = gcpProp.getProperty("tableName");
        String query =
                "SELECT " +key
                        + " FROM `"
                        + projectId
                        + "."
                        + datasetName
                        + "."
                        + tableName
                        + "`"
                        + " WHERE x_vf_trace_session_id = " + "\"" + sessionID + "\"";
        return getquery(query);
    }

    public static TableResult getquery(String query) {
        TableResult results = null;
        try {
            // Initialize client that will be used to send requests. This client only needs to be created
            // once, and can be reused for multiple requests.
            BigQuery bigquery = BigQueryOptions.newBuilder().setProjectId(gcpProp.getProperty("projectId"))
                    .setCredentials(ServiceAccountCredentials.
                            fromStream(new FileInputStream(gcpProp.getProperty("key")))
                    ).build().getService();

            QueryJobConfiguration queryConfig = QueryJobConfiguration.newBuilder(query).build();
            results = bigquery.query(queryConfig);

//            results.iterateAll().forEach(row -> row.forEach(val -> System.out.printf("%s,", val.toString())));
            System.out.println("Query performed successfully.");
        } catch (BigQueryException | InterruptedException e) {
            System.out.println("Query not performed \n" + e.toString());
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return results;
    }
}