// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom.a;

import com.etermax.a.a;
import org.json.JSONObject;

public class b
{

    private int a;
    private String b;
    private int c;

    public b(JSONObject jsonobject)
    {
        if (!jsonobject.has("sid"))
        {
            throw new Exception("Missing sid");
        }
        if (!jsonobject.has("pid"))
        {
            throw new Exception("Missing pid");
        }
        if (!jsonobject.has("fid"))
        {
            throw new Exception("Missing fid");
        } else
        {
            a = jsonobject.getInt("sid");
            b = jsonobject.getString("pid");
            c = jsonobject.getInt("fid");
            com.etermax.a.a.c("mopub ads", (new StringBuilder()).append("SmartAdsHelper - siteId: ").append(a).append(", pageId: ").append(b).append(", formatId: ").append(c).toString());
            return;
        }
    }

    public int a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }
}
