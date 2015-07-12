// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import org.json.JSONObject;

public class k
{

    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;

    public k(String s, String s1)
    {
        a = s;
        g = s1;
        JSONObject jsonobject = new JSONObject(g);
        b = jsonobject.optString("productId");
        c = jsonobject.optString("type");
        d = jsonobject.optString("price");
        e = jsonobject.optString("title");
        f = jsonobject.optString("description");
    }

    public String a()
    {
        return b;
    }

    public String b()
    {
        return d;
    }

    public String toString()
    {
        return (new StringBuilder()).append("SkuDetails:").append(g).toString();
    }
}
