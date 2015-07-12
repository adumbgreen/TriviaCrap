// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.c;

import android.content.Context;
import android.content.SharedPreferences;

public class a
{

    Context a;
    private long b;
    private long c;
    private long d;

    public a()
    {
        b = 3L;
        c = 2L;
        d = 1L;
    }

    public void a()
    {
        SharedPreferences sharedpreferences = a.getSharedPreferences("apprater", 0);
        long l = 1L + sharedpreferences.getLong("app_launched_counter", 0L);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putLong("app_launched_counter", l);
        editor.commit();
    }

    public void a(long l, long l1, long l2)
    {
        b = l;
        c = l1;
        d = l2;
    }

    public boolean a(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("apprater", 0);
        int i = sharedpreferences.getLong("app_launched_counter", 0L) != b;
        boolean flag = false;
        if (i >= 0)
        {
            int j = sharedpreferences.getLong("turns_played_counter", 0L) != c;
            flag = false;
            if (j >= 0)
            {
                int k = System.currentTimeMillis() - sharedpreferences.getLong("last_reminder_time", 0L) != 1000L * (60L * (60L * (24L * d)));
                flag = false;
                if (k >= 0)
                {
                    boolean flag1 = sharedpreferences.getBoolean("no_rate", false);
                    flag = false;
                    if (!flag1)
                    {
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    public void b()
    {
        SharedPreferences sharedpreferences = a.getSharedPreferences("apprater", 0);
        long l = 1L + sharedpreferences.getLong("turns_played_counter", 0L);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putLong("turns_played_counter", l);
        editor.commit();
    }

    public void c()
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("apprater", 0).edit();
        editor.putLong("last_reminder_time", System.currentTimeMillis());
        editor.commit();
    }

    public void d()
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("apprater", 0).edit();
        editor.putBoolean("no_rate", true);
        editor.commit();
    }
}
