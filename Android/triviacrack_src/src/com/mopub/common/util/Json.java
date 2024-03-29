// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class Json
{

    public Json()
    {
    }

    public static Object getJsonValue(JSONObject jsonobject, String s, Class class1)
    {
        if (jsonobject == null || s == null || class1 == null)
        {
            throw new IllegalArgumentException("Cannot pass any null argument to getJsonValue");
        }
        Object obj = jsonobject.opt(s);
        if (obj == null)
        {
            MoPubLog.w((new StringBuilder()).append("Tried to get Json value with key: ").append(s).append(", but it was null").toString());
            return null;
        }
        if (!class1.isInstance(obj))
        {
            MoPubLog.w((new StringBuilder()).append("Tried to get Json value with key: ").append(s).append(", of type: ").append(class1.toString()).append(", its type did not match").toString());
            return null;
        } else
        {
            return class1.cast(obj);
        }
    }

    public static String[] jsonArrayToStringArray(String s)
    {
        String s1 = (new StringBuilder()).append("{key:").append(s).append("}").toString();
        String as[];
        JSONArray jsonarray;
        jsonarray = ((JSONObject)(new JSONTokener(s1)).nextValue()).getJSONArray("key");
        as = new String[jsonarray.length()];
        int i = 0;
_L2:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        as[i] = jsonarray.getString(i);
        i++;
        if (true) goto _L2; else goto _L1
        JSONException jsonexception;
        jsonexception;
        as = new String[0];
_L1:
        return as;
    }

    public static Map jsonStringToMap(String s)
    {
        HashMap hashmap = new HashMap();
        if (s == null || s.equals(""))
        {
            return hashmap;
        }
        JSONObject jsonobject = (JSONObject)(new JSONTokener(s)).nextValue();
        String s1;
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashmap.put(s1, jsonobject.getString(s1)))
        {
            s1 = (String)iterator.next();
        }

        return hashmap;
    }

    public static String mapToJsonString(Map map)
    {
        if (map == null)
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("{");
        Iterator iterator = map.entrySet().iterator();
        for (boolean flag = true; iterator.hasNext(); flag = false)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (!flag)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append("\"");
            stringbuilder.append((String)entry.getKey());
            stringbuilder.append("\":\"");
            stringbuilder.append((String)entry.getValue());
            stringbuilder.append("\"");
        }

        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
