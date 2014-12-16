// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.j;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Date;

public class h
{

    public static Date a(Context context)
    {
        return a(context, new Date());
    }

    public static Date a(Context context, Date date)
    {
        return new Date(context.getSharedPreferences("ServerUtilsPreferences", 0).getLong("ServerToLocalTimeDiffMillis", 0L) + date.getTime());
    }

    public static void a(Context context, Date date, Date date1)
    {
        long l = date.getTime() - date1.getTime();
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("ServerUtilsPreferences", 0).edit();
        editor.putLong("ServerToLocalTimeDiffMillis", l);
        editor.commit();
    }
}
