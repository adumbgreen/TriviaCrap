// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import java.util.HashMap;
import org.json.JSONObject;

public class b
{

    public String a;
    public int b;
    public double c;
    public double d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;

    public b(String s, int j, double d1, double d2)
    {
        a = null;
        b = 0;
        c = 0.0D;
        d = 0.0D;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        a = s;
        b = j;
        c = d1;
        d = d2;
    }

    public JSONObject a()
    {
        HashMap hashmap = new HashMap();
        if (a != null)
        {
            hashmap.put("item", a);
        }
        hashmap.put("quantity", Integer.toString(b));
        hashmap.put("unit_price", Double.toString(c));
        hashmap.put("revenue", Double.toString(d));
        if (e != null)
        {
            hashmap.put("attribute_sub1", e);
        }
        if (f != null)
        {
            hashmap.put("attribute_sub2", f);
        }
        if (g != null)
        {
            hashmap.put("attribute_sub3", g);
        }
        if (h != null)
        {
            hashmap.put("attribute_sub4", h);
        }
        if (i != null)
        {
            hashmap.put("attribute_sub5", i);
        }
        return new JSONObject(hashmap);
    }
}
