// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.s;
import java.util.Calendar;
import java.util.GregorianCalendar;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public Calendar a(a a1)
    {
        int i = 0;
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        a1.c();
        int j = 0;
        int k = 0;
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        do
        {
            if (a1.f() == b.d)
            {
                break;
            }
            String s1 = a1.g();
            int k1 = a1.m();
            if ("year".equals(s1))
            {
                j1 = k1;
            } else
            if ("month".equals(s1))
            {
                i1 = k1;
            } else
            if ("dayOfMonth".equals(s1))
            {
                l = k1;
            } else
            if ("hourOfDay".equals(s1))
            {
                k = k1;
            } else
            if ("minute".equals(s1))
            {
                j = k1;
            } else
            if ("second".equals(s1))
            {
                i = k1;
            }
        } while (true);
        a1.d();
        return new GregorianCalendar(j1, i1, l, k, j, i);
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Calendar)obj);
    }

    public void a(c c1, Calendar calendar)
    {
        if (calendar == null)
        {
            c1.f();
            return;
        } else
        {
            c1.d();
            c1.a("year");
            c1.a(calendar.get(1));
            c1.a("month");
            c1.a(calendar.get(2));
            c1.a("dayOfMonth");
            c1.a(calendar.get(5));
            c1.a("hourOfDay");
            c1.a(calendar.get(11));
            c1.a("minute");
            c1.a(calendar.get(12));
            c1.a("second");
            c1.a(calendar.get(13));
            c1.e();
            return;
        }
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
