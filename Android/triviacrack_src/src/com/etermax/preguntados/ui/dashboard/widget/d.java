// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.os.Handler;
import java.util.Date;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.widget:
//            e, f

public class d
{

    private Context a;
    private Handler b;
    private ConcurrentHashMap c;
    private Runnable d;

    public d(Context context)
    {
        a = context;
        c = new ConcurrentHashMap();
        b = new Handler();
    }

    static Context a(d d1)
    {
        return d1.a;
    }

    static ConcurrentHashMap b(d d1)
    {
        return d1.c;
    }

    private void b()
    {
        d = new e(this);
        b.post(d);
    }

    static Runnable c(d d1)
    {
        return d1.d;
    }

    private void c()
    {
        b.removeCallbacks(d);
        d = null;
    }

    static Handler d(d d1)
    {
        return d1.b;
    }

    public void a()
    {
        c();
        c.clear();
    }

    public void a(f f)
    {
        if (c != null && f != null && c.containsKey(f) && (Date)c.remove(f) != null && c.size() == 0)
        {
            c();
        }
    }

    public void a(f f, Date date)
    {
        if (c != null && f != null && !c.containsKey(f) && (Date)c.put(f, date) == null && c.size() == 1)
        {
            b();
        }
    }
}
