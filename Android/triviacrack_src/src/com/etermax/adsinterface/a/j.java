// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.content.Context;
import android.content.SharedPreferences;

public class j
{

    SharedPreferences a;

    public j(Context context)
    {
        a = context.getSharedPreferences("custom_ads_cache", 0);
    }

    public void a(String s, int i, String s1)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putString((new StringBuilder()).append(s).append("_json").toString(), s1);
        editor.putInt((new StringBuilder()).append(s).append("_version").toString(), i);
        editor.commit();
    }

    public boolean a(String s)
    {
        return a.contains((new StringBuilder()).append(s).append("_json").toString()) && a.contains((new StringBuilder()).append(s).append("_version").toString());
    }

    public String b(String s)
    {
        return a.getString((new StringBuilder()).append(s).append("_json").toString(), null);
    }

    public int c(String s)
    {
        return a.getInt((new StringBuilder()).append(s).append("_version").toString(), -1);
    }
}
