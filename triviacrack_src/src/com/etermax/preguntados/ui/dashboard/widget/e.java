// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.os.Handler;
import com.etermax.tools.j.h;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.widget:
//            d, f

class e
    implements Runnable
{

    final d a;

    private e(d d1)
    {
        a = d1;
        super();
    }

    e(d d1, d._cls1 _pcls1)
    {
        this(d1);
    }

    public void run()
    {
        Date date = h.a(d.a(a));
        for (Iterator iterator = d.b(a).keySet().iterator(); iterator.hasNext();)
        {
            f f1 = (f)iterator.next();
            long l = ((Date)d.b(a).get(f1)).getTime() - date.getTime();
            if (l >= 0L)
            {
                f1.a(l);
            } else
            {
                f1.a();
                a.a(f1);
            }
        }

        d.d(a).postDelayed(d.c(a), 500L);
    }
}
