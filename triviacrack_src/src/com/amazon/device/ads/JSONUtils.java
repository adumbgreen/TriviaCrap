// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class JSONUtils
{

    JSONUtils()
    {
    }

    public static boolean getBooleanFromJSON(JSONObject jsonobject, String s, boolean flag)
    {
        return jsonobject.optBoolean(s, flag);
    }

    public static int getIntegerFromJSON(JSONObject jsonobject, String s, int i)
    {
        return jsonobject.optInt(s, i);
    }

    public static int getIntegerFromJSONArray(JSONArray jsonarray, int i, int j)
    {
        return jsonarray.optInt(i, j);
    }

    public static JSONArray getJSONArrayFromJSON(JSONObject jsonobject, String s)
    {
        return jsonobject.optJSONArray(s);
    }

    public static JSONObject getJSONObjectFromJSONArray(JSONArray jsonarray, int i)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = jsonarray.getJSONObject(i);
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return jsonobject;
    }

    public static JSONObject getJSONObjectFromString(String s)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject(s);
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return jsonobject;
    }

    public static long getLongFromJSON(JSONObject jsonobject, String s, long l)
    {
        return jsonobject.optLong(s, l);
    }

    public static String getStringFromJSON(JSONObject jsonobject, String s, String s1)
    {
        return jsonobject.optString(s, s1);
    }

    public static void put(JSONObject jsonobject, String s, int i)
    {
        try
        {
            jsonobject.put(s, i);
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    public static void put(JSONObject jsonobject, String s, long l)
    {
        try
        {
            jsonobject.put(s, l);
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    public static void put(JSONObject jsonobject, String s, String s1)
    {
        if (s1 == null || s1.equals(""))
        {
            break MISSING_BLOCK_LABEL_20;
        }
        jsonobject.put(s, s1);
        return;
        JSONException jsonexception;
        jsonexception;
    }

    public static void put(JSONObject jsonobject, String s, boolean flag)
    {
        try
        {
            jsonobject.put(s, flag);
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }
}
