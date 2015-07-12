// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

final class t
{

    private HttpClient a;

    public t()
    {
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeregistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basichttpparams, "UTF-8");
        HttpConnectionParams.setSocketBufferSize(basichttpparams, 8192);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 60000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 60000);
        a = new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
    }

    public final JSONObject a(String s, JSONObject jsonobject, boolean flag)
    {
        if (jsonobject != null && jsonobject.length() != 0) goto _L2; else goto _L1
_L1:
        HttpResponse httpresponse1 = a.execute(new HttpGet(s));
        HttpResponse httpresponse = httpresponse1;
_L8:
        if (httpresponse == null) goto _L4; else goto _L3
_L3:
        StatusLine statusline;
        org.apache.http.Header header;
        statusline = httpresponse.getStatusLine();
        header = httpresponse.getFirstHeader("X-MAT-Responder");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        Log.d("MobileAppTracker", (new StringBuilder("Request completed with status ")).append(statusline.getStatusCode()).toString());
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(httpresponse.getEntity().getContent(), "UTF-8"));
        stringbuilder = new StringBuilder();
_L7:
        String s1 = bufferedreader.readLine();
        if (s1 == null) goto _L6; else goto _L5
_L5:
        stringbuilder.append(s1).append("\n");
          goto _L7
        Exception exception1;
        exception1;
        exception1.printStackTrace();
_L4:
        JSONObject jsonobject1 = new JSONObject();
_L15:
        return jsonobject1;
        Exception exception;
        exception;
        if (flag)
        {
            Log.d("MobileAppTracker", (new StringBuilder("Request error with URL ")).append(s).toString());
        }
        exception.printStackTrace();
        httpresponse = null;
          goto _L8
_L2:
        HttpResponse httpresponse2;
        StringEntity stringentity = new StringEntity(jsonobject.toString(), "UTF-8");
        stringentity.setContentType("application/json");
        HttpPost httppost = new HttpPost(s);
        httppost.setEntity(stringentity);
        httpresponse2 = a.execute(httppost);
        httpresponse = httpresponse2;
          goto _L8
        Exception exception3;
        exception3;
        exception3.printStackTrace();
        httpresponse = null;
          goto _L8
_L6:
        JSONObject jsonobject2;
        bufferedreader.close();
        jsonobject2 = new JSONObject();
        JSONObject jsonobject3 = new JSONObject(new JSONTokener(stringbuilder.toString()));
        if (!flag) goto _L10; else goto _L9
_L9:
        int i;
        Log.d("MobileAppTracker", (new StringBuilder("Server response: ")).append(jsonobject3).toString());
        i = jsonobject3.length();
        if (i <= 0) goto _L10; else goto _L11
_L11:
        if (!jsonobject3.has("errors") || jsonobject3.getJSONArray("errors").length() == 0) goto _L13; else goto _L12
_L12:
        String s4 = jsonobject3.getJSONArray("errors").getString(0);
        Log.d("MobileAppTracker", (new StringBuilder("Event was rejected by server with error: ")).append(s4).toString());
        jsonobject1 = jsonobject3;
_L17:
        if (statusline.getStatusCode() >= 200 && statusline.getStatusCode() <= 299) goto _L15; else goto _L14
_L14:
        if (statusline.getStatusCode() != 400 || header == null) goto _L4; else goto _L16
_L16:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_481;
        }
        Log.d("MobileAppTracker", "Request received 400 error from MAT server, won't be retried");
        return null;
_L13:
        if (!jsonobject3.has("log_action") || jsonobject3.getString("log_action").equals("null") || jsonobject3.getString("log_action").equals("false"))
        {
            break MISSING_BLOCK_LABEL_630;
        }
        JSONObject jsonobject5 = jsonobject3.getJSONObject("log_action");
        if (!jsonobject5.has("conversion"))
        {
            break MISSING_BLOCK_LABEL_755;
        }
        JSONObject jsonobject6 = jsonobject5.getJSONObject("conversion");
        if (!jsonobject6.has("status"))
        {
            break MISSING_BLOCK_LABEL_755;
        }
        if (!jsonobject6.getString("status").equals("rejected"))
        {
            break MISSING_BLOCK_LABEL_618;
        }
        String s3 = jsonobject6.getString("status_code");
        Log.d("MobileAppTracker", (new StringBuilder("Event was rejected by server: status code ")).append(s3).toString());
        jsonobject1 = jsonobject3;
          goto _L17
        Log.d("MobileAppTracker", "Event was accepted by server");
        break MISSING_BLOCK_LABEL_755;
        if (jsonobject3.has("options"))
        {
            JSONObject jsonobject4 = jsonobject3.getJSONObject("options");
            if (jsonobject4.has("conversion_status"))
            {
                String s2 = jsonobject4.getString("conversion_status");
                Log.d("MobileAppTracker", (new StringBuilder("Event was ")).append(s2).append(" by server").toString());
            }
        }
        jsonobject1 = jsonobject3;
          goto _L17
        JSONException jsonexception;
        jsonexception;
        Log.d("MobileAppTracker", "Server response status could not be parsed");
        jsonexception.printStackTrace();
_L10:
        jsonobject1 = jsonobject3;
          goto _L17
        Exception exception2;
        exception2;
        jsonobject3 = jsonobject2;
_L18:
        exception2.printStackTrace();
        jsonobject1 = jsonobject3;
          goto _L17
        exception2;
          goto _L18
        jsonobject1 = jsonobject3;
          goto _L17
    }
}
