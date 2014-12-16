// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import android.content.Context;
import android.os.CountDownTimer;
import com.etermax.tools.j.h;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            e, f

public class d
{

    private CountDownTimer a;
    private Set b;
    private Set c;

    public d(Context context, long l)
    {
        b = new HashSet();
        c = new HashSet();
        a(l);
    }

    public d(Context context, Date date)
    {
        b = new HashSet();
        c = new HashSet();
        if (date != null)
        {
            Date date1 = h.a(context);
            a(date.getTime() - date1.getTime());
        }
    }

    static Set a(d d1)
    {
        return d1.b;
    }

    private void a(long l)
    {
        a = new CountDownTimer(l, 500L) {

            final d a;

            private void a()
            {
                for (Iterator iterator = d.b(a).iterator(); iterator.hasNext(); ((e)iterator.next()).b()) { }
            }

            private void a(long l1)
            {
                for (Iterator iterator = d.a(a).iterator(); iterator.hasNext(); ((f)iterator.next()).a(l1)) { }
            }

            public void onFinish()
            {
                a();
            }

            public void onTick(long l1)
            {
                a(l1);
            }

            
            {
                a = d.this;
                super(l, l1);
            }
        };
        a.start();
    }

    static Set b(d d1)
    {
        return d1.c;
    }

    public void a()
    {
        b.clear();
        c.clear();
        a.cancel();
    }

    public void a(e e)
    {
        if (c != null && e != null && !c.contains(e))
        {
            c.add(e);
        }
    }

    public void a(f f)
    {
        if (b != null && f != null && !b.contains(f))
        {
            b.add(f);
        }
    }

    public void b(f f)
    {
        if (b != null && f != null && b.contains(f))
        {
            b.remove(f);
        }
    }
}
