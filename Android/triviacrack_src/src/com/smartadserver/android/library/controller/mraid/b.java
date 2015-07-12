// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import org.json.JSONException;
import org.json.JSONObject;

public class b
{

    public int a;
    public int b;
    public boolean c;
    public boolean d;
    public boolean e;

    public b()
    {
        a = 0;
        b = 0;
        c = false;
        d = true;
        e = false;
    }

    public b(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        a = jsonobject.optInt("width", -1);
        b = jsonobject.optInt("height", -1);
        c = jsonobject.optBoolean("useCustomClose", false);
        d = true;
        e = jsonobject.optBoolean("collapseAfterAdOpened", false);
    }

    public String a()
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        try
        {
            jsonobject.put("width", a);
            jsonobject.put("height", b);
            jsonobject.put("useCustomClose", c);
            jsonobject.put("isModal", d);
            jsonobject.put("collapseAfterAdOpened", e);
            s = jsonobject.toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }
}
