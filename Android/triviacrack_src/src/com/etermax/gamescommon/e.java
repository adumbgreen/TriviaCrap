// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import android.content.Context;
import android.content.SharedPreferences;

// Referenced classes of package com.etermax.gamescommon:
//            g, f

public class e
{

    Context a;
    private SharedPreferences b;

    public e()
    {
    }

    public long a(g g1, long l)
    {
        return a(g1.a(), l);
    }

    public long a(String s, long l)
    {
        return b.getLong(s, l);
    }

    public String a(g g1, String s)
    {
        return a(g1.a(), s);
    }

    public String a(String s, String s1)
    {
        return b.getString(s, s1);
    }

    protected void a()
    {
        if (a instanceof f)
        {
            f f1 = (f)a;
            b = a.getSharedPreferences(f1.h(), 0);
            return;
        } else
        {
            throw new RuntimeException((new StringBuilder()).append(a.getClass().getName()).append(" must implement IAppSettings").toString());
        }
    }

    public void a(String s)
    {
        b.edit().remove(s).commit();
    }

    public boolean a(g g1, boolean flag)
    {
        return a(g1.a(), flag);
    }

    public boolean a(String s, boolean flag)
    {
        return b.getBoolean(s, flag);
    }

    public void b(g g1, long l)
    {
        b(g1.a(), l);
    }

    public void b(g g1, String s)
    {
        b(g1.a(), s);
    }

    public void b(g g1, boolean flag)
    {
        b(g1.a(), flag);
    }

    public void b(String s, long l)
    {
        b.edit().putLong(s, l).commit();
    }

    public void b(String s, String s1)
    {
        b.edit().putString(s, s1).commit();
    }

    public void b(String s, boolean flag)
    {
        b.edit().putBoolean(s, flag).commit();
    }
}
