// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.f.a;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONObject;

public abstract class a
{

    private static long e = 0L;
    public String a;
    public String b;
    public String c;
    protected ConnectivityManager d;

    public a(String s, String s1, String s2, ConnectivityManager connectivitymanager)
    {
        a = s;
        b = s1;
        c = s2;
        d = connectivitymanager;
    }

    protected String a()
    {
        String s = "cell";
        if (d != null)
        {
            NetworkInfo networkinfo = d.getActiveNetworkInfo();
            if (networkinfo != null && networkinfo.getType() == 1)
            {
                s = "wifi";
            }
        }
        return s;
    }

    public abstract String a(int i, String s, int j, String s1, boolean flag);

    protected String a(boolean flag)
    {
        if (flag || e == 0L)
        {
            e = System.currentTimeMillis();
        }
        return String.valueOf(e);
    }

    public abstract HttpPost a(String s, JSONObject jsonobject);

}
