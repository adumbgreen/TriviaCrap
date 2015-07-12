// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import org.json.JSONObject;

public class j
{

    String a;
    String b;
    String c;
    String d;
    long e;
    int f;
    String g;
    String h;
    String i;
    String j;

    public j(String s, String s1, String s2)
    {
        a = s;
        i = s1;
        JSONObject jsonobject = new JSONObject(i);
        b = jsonobject.optString("orderId");
        c = jsonobject.optString("packageName");
        d = jsonobject.optString("productId");
        e = jsonobject.optLong("purchaseTime");
        f = jsonobject.optInt("purchaseState");
        g = jsonobject.optString("developerPayload");
        h = jsonobject.optString("token", jsonobject.optString("purchaseToken"));
        j = s2;
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public String c()
    {
        return d;
    }

    public int d()
    {
        return f;
    }

    public String e()
    {
        return h;
    }

    public String f()
    {
        return i;
    }

    public String g()
    {
        return j;
    }

    public String toString()
    {
        return (new StringBuilder()).append("PurchaseInfo(type:").append(a).append("):").append(i).toString();
    }
}
