// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.h;

import java.util.Calendar;
import java.util.Locale;

public class c
{

    public static int a(Calendar calendar, Calendar calendar1)
    {
        int i = calendar1.get(1) - calendar.get(1);
        if (calendar.get(2) > calendar1.get(2) || calendar.get(2) == calendar1.get(2) && calendar.get(5) > calendar1.get(5))
        {
            i--;
        }
        return i;
    }

    public static String a(long l)
    {
        return a(l, true);
    }

    public static String a(long l, boolean flag)
    {
        int i = (int)(l / 0x36ee80L);
        if (flag)
        {
            i %= 24;
        }
        int j = (int)((l / 60000L) % 60L);
        int k = (int)(l / 1000L) % 60;
        Locale locale = Locale.US;
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        aobj[2] = Integer.valueOf(k);
        return String.format(locale, "%02d:%02d:%02d", aobj);
    }

    public static String b(long l)
    {
        int i = (int)((l / 60000L) % 60L);
        int j = (int)(l / 1000L) % 60;
        Locale locale = Locale.US;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        return String.format(locale, "%02d:%02d", aobj);
    }

    public static String c(long l)
    {
        String s = b(l);
        int i = Math.round((float)(l % 1000L) / 10F);
        Locale locale = Locale.US;
        String s1 = (new StringBuilder()).append(s).append(".%02d").toString();
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        return String.format(locale, s1, aobj);
    }
}
