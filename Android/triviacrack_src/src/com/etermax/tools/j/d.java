// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.j;

import android.content.res.Resources;
import com.etermax.a.a;
import com.etermax.m;
import com.etermax.o;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class d
{

    public static long a(String s)
    {
        long l;
        try
        {
            l = (new SimpleDateFormat("MM/dd/yyyy HH:mm:ss z", Locale.US)).parse(s).getTime();
        }
        catch (Exception exception)
        {
            com.etermax.a.a.a("DateUtils", "Excepci\363n parseando fecha", exception);
            return 0L;
        }
        return l;
    }

    public static String a(Resources resources, long l, long l1)
    {
        return a(resources, l, l1, resources.getString(o.moment));
    }

    public static String a(Resources resources, long l, long l1, String s)
    {
        int i = (int)((l1 - l) / 1000L);
        int j = (i / 60) % 60;
        int k = i / 3600;
        int i1 = i / 0x15180;
        int j1 = m.minutes;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(j);
        String s1 = resources.getQuantityString(j1, j, aobj);
        if (i1 > 0)
        {
            int i2 = m.days;
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(i1);
            s = resources.getQuantityString(i2, i1, aobj2);
        } else
        {
            if (k > 0)
            {
                int k1 = m.hours;
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf(k);
                return resources.getQuantityString(k1, k, aobj1);
            }
            if (j > 0)
            {
                return s1;
            }
        }
        return s;
    }
}
