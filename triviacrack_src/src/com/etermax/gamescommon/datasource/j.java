// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.content.Context;
import android.content.SharedPreferences;
import com.etermax.tools.j.a;
import com.google.gson.Gson;
import java.util.HashMap;

public class j
{

    private static String c = "{ }";
    Context a;
    private HashMap b;

    public j()
    {
    }

    public Object a(String s, Class class1)
    {
        if (!b.containsKey(s))
        {
            String s1 = a.getSharedPreferences(s, 0).getString(s, c);
            Object obj = com.etermax.tools.j.a.a().fromJson(s1, class1);
            b.put(s, obj);
        }
        return b.get(s);
    }

    public void a()
    {
        b = new HashMap();
    }

    public void a(String s)
    {
        b.remove(s);
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences(s, 0).edit();
        editor.remove(s);
        editor.commit();
    }

    public void a(String s, Object obj)
    {
        b.put(s, obj);
        String s1 = com.etermax.tools.j.a.a().toJson(obj);
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences(s, 0).edit();
        editor.putString(s, s1);
        editor.commit();
    }

    public Object b(String s, Class class1)
    {
        if (!b.containsKey(s))
        {
            String s1 = a.getSharedPreferences(s, 0).getString(s, null);
            if (s1 != null)
            {
                Object obj = com.etermax.tools.j.a.a().fromJson(s1, class1);
                b.put(s, obj);
            }
        }
        return b.get(s);
    }

}
