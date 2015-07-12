// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import org.json.JSONException;
import org.json.JSONObject;

public class d
{

    public int a;
    public int b;
    public String c;
    public int d;
    public int e;
    public boolean f;

    public d()
    {
        f = true;
        a = -1;
        b = -1;
        c = "top-right";
        d = 0;
        e = 0;
        f = true;
    }

    public d(String s)
    {
        f = true;
        JSONObject jsonobject = new JSONObject(s);
        a = jsonobject.optInt("width", -1);
        b = jsonobject.optInt("height", -1);
        c = jsonobject.optString("customClosePosition", "top-right");
        d = jsonobject.optInt("offsetX", 0);
        e = jsonobject.optInt("offsetY", 0);
        f = jsonobject.optBoolean("allowOffscreen", true);
    }

    public String a()
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        try
        {
            jsonobject.put("width", a);
            jsonobject.put("height", b);
            jsonobject.put("customClosePosition", c);
            jsonobject.put("offsetX", d);
            jsonobject.put("offsetY", e);
            jsonobject.put("allowOffscreen", f);
            s = jsonobject.toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }

    public int b()
    {
        byte byte0 = 6;
        if ("top-left".equals(c))
        {
            byte0 = 0;
        } else
        {
            if ("top-center".equals(c))
            {
                return 4;
            }
            if ("bottom-left".equals(c))
            {
                return 2;
            }
            if ("bottom-center".equals(c))
            {
                return 5;
            }
            if ("bottom-right".equals(c))
            {
                return 3;
            }
            if (!"center".equals(c) && !"none".equals(c))
            {
                return 1;
            }
        }
        return byte0;
    }
}
