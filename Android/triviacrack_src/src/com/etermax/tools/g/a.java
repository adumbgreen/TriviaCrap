// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.g;

import android.content.pm.ApplicationInfo;

public class a
{

    private static boolean a;
    private static String b;

    public static void a(ApplicationInfo applicationinfo)
    {
        a = false;
    }

    public static void a(String s)
    {
        b = s;
    }

    public static boolean a()
    {
        return a;
    }

    public static String b()
    {
        return b;
    }

    public static boolean c()
    {
        return b != null;
    }
}
