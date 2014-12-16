// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import org.json.JSONException;
import org.json.JSONObject;

public class c
{

    public boolean a;
    public String b;

    public c()
    {
        a = true;
        b = "none";
    }

    public c(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        a = jsonobject.optBoolean("allowOrientationChange", true);
        b = jsonobject.optString("forceOrientation", "none");
    }

    public String a()
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        try
        {
            jsonobject.put("allowOrientationChange", a);
            jsonobject.put("forceOrientation", b);
            s = jsonobject.toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }
}
