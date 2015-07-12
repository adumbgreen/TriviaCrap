// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.etermax.tools.g.a;

// Referenced classes of package com.etermax.tools.a.a:
//            f

public class j
{

    protected Context a;
    private String b;

    public j()
    {
    }

    private String d()
    {
        if (com.etermax.tools.g.a.a())
        {
            if (b == null)
            {
                b = e().getString("base_url", null);
                if (b == null)
                {
                    b = ((f)a).a(0);
                    e().edit().putString("base_url", b).commit();
                }
            }
            return b;
        } else
        {
            return ((f)a).a(0);
        }
    }

    private SharedPreferences e()
    {
        return a.getSharedPreferences("angrygames_url_manager_preferences_key", 0);
    }

    public String a(int i)
    {
        return ((f)a).a(i);
    }

    protected void a()
    {
        if (!(a instanceof f))
        {
            throw new RuntimeException("Application must implement IApplicationURLManager");
        } else
        {
            return;
        }
    }

    public void a(String s)
    {
        e().edit().putString("base_url", s).commit();
        b = s;
        ((f)a).n();
    }

    public String b()
    {
        if (!com.etermax.tools.g.a.a() || d().equals(((f)a).a(0)))
        {
            return (new StringBuilder()).append("https://").append(d()).toString();
        } else
        {
            return (new StringBuilder()).append("http://").append(d()).toString();
        }
    }

    public String c()
    {
        return d();
    }
}
