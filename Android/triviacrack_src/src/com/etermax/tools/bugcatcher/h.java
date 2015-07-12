// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            g, i

public class h
{

    private SharedPreferences a;

    public h(Context context)
    {
        a = context.getSharedPreferences("JIRA_CONNECTOR", 0);
    }

    private JSONObject a(String s, JSONArray jsonarray)
    {
        int j = (int)Math.floor(10000000D * Math.random());
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("jsonrpc", "2.0");
        jsonobject.put("method", s);
        jsonobject.put("params", jsonarray);
        jsonobject.put("id", j);
        JSONObject jsonobject1 = a(jsonobject.toString());
        if (jsonobject1.has("error"))
        {
            if (jsonobject1.getJSONObject("error").getInt("code") == 500)
            {
                throw new g();
            } else
            {
                throw new IOException((new StringBuilder()).append("Request error: ").append(jsonobject1.getString("error")).toString());
            }
        } else
        {
            return jsonobject1;
        }
    }

    public String a(String s, String s1, String s2, String s3, String s4, String s5, int j)
    {
        JSONArray jsonarray = new JSONArray();
        jsonarray.put(a.getString("AUTH_TOKEN", null));
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("project", s);
        jsonobject.put("type", 1);
        if (s1 == null)
        {
            s1 = "Crash con Exception";
        }
        jsonobject.put("summary", s1);
        jsonobject.put("description", s2);
        JSONArray jsonarray1 = new JSONArray();
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("id", s4);
        jsonarray1.put(jsonobject1);
        jsonobject.put("fixVersions", jsonarray1);
        if (s5 != null)
        {
            JSONArray jsonarray2 = new JSONArray();
            JSONObject jsonobject2 = new JSONObject();
            jsonobject2.put("id", s5);
            jsonarray2.put(jsonobject2);
            jsonobject.put("affectsVersions", jsonarray2);
        }
        JSONArray jsonarray3 = new JSONArray();
        JSONObject jsonobject3 = new JSONObject();
        jsonobject3.put("id", s3);
        jsonarray3.put(jsonobject3);
        jsonobject.put("components", jsonarray3);
        jsonobject.put("priority", (new StringBuilder()).append(j).append("").toString());
        jsonarray.put(jsonobject);
        return a("createIssue", jsonarray).getJSONObject("result").getString("key");
    }

    public JSONObject a(String s)
    {
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        HttpPost httppost = new HttpPost("http://jira.etermax.com/jira/rpc/json-rpc/jirasoapservice-v2");
        httppost.setEntity(new StringEntity(s, "UTF-8"));
        httppost.setHeader("Content-type", "application/json");
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(defaulthttpclient.execute(httppost).getEntity().getContent(), "UTF-8"));
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            String s1 = bufferedreader.readLine();
            if (s1 != null)
            {
                stringbuilder.append(s1);
            } else
            {
                return new JSONObject(stringbuilder.toString());
            }
        } while (true);
    }

    public void a(String s, String s1)
    {
        JSONArray jsonarray = new JSONArray();
        jsonarray.put(s);
        jsonarray.put(s1);
        String s2 = a("login", jsonarray).getString("result");
        a.edit().putString("AUTH_TOKEN", s2).putString("LOGGED_IN_USER", s).putString("LOGGED_IN_PASSWORD", s1).commit();
    }

    public void a(String s, String s1, String s2)
    {
        JSONArray jsonarray = new JSONArray();
        jsonarray.put(a.getString("AUTH_TOKEN", null));
        jsonarray.put(s);
        JSONArray jsonarray1 = new JSONArray();
        jsonarray1.put(s1);
        jsonarray.put(jsonarray1);
        JSONArray jsonarray2 = new JSONArray();
        jsonarray2.put(s2);
        jsonarray.put(jsonarray2);
        a("addBase64EncodedAttachmentsToIssue", jsonarray);
    }

    public boolean a()
    {
        try
        {
            a(a.getString("LOGGED_IN_USER", null), a.getString("LOGGED_IN_PASSWORD", null));
        }
        catch (Exception exception)
        {
            return false;
        }
        return true;
    }

    public List b(String s)
    {
        JSONArray jsonarray = new JSONArray();
        jsonarray.put(a.getString("AUTH_TOKEN", null));
        jsonarray.put(s);
        JSONObject jsonobject = a("getVersions", jsonarray);
        ArrayList arraylist = new ArrayList();
        JSONArray jsonarray1 = jsonobject.getJSONArray("result");
        for (int j = 0; j < jsonarray1.length(); j++)
        {
            JSONObject jsonobject1 = jsonarray1.getJSONObject(j);
            if (!jsonobject1.getBoolean("archived") && jsonobject1.getString("name").toLowerCase().contains("android"))
            {
                arraylist.add(new i(jsonobject1.getString("id"), jsonobject1.getString("name").replaceAll("Android ", ""), jsonobject1.getBoolean("released")));
            }
        }

        Collections.sort(arraylist);
        return arraylist;
    }

    public boolean b()
    {
        return a.getString("AUTH_TOKEN", null) != null;
    }

    public CharSequence c()
    {
        return a.getString("LOGGED_IN_USER", null);
    }
}
