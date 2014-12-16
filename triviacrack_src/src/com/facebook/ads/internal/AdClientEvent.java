// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class AdClientEvent
{

    private Map data;
    private String name;
    private int time;

    public AdClientEvent(String s, Map map, int i)
    {
        name = s;
        data = map;
        time = i;
    }

    public static AdClientEvent newErrorEvent(Exception exception)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("ex", exception.getClass().getSimpleName());
        hashmap.put("ex_msg", exception.getMessage());
        return new AdClientEvent("error", hashmap, (int)(System.currentTimeMillis() / 1000L));
    }

    public JSONObject getClientEventJson()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("name", name);
            jsonobject.put("data", new JSONObject(data));
            jsonobject.put("time", time);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return jsonobject;
        }
        return jsonobject;
    }
}
