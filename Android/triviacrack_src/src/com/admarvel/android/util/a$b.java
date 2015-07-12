// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import android.app.ActivityManager;
import android.content.Context;

class moryInfo
{

    static long a(Context context)
    {
        long l;
        try
        {
            ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
            android.app.vityManager.MemoryInfo memoryinfo = new android.app.vityManager.MemoryInfo();
            activitymanager.getMemoryInfo(memoryinfo);
            l = memoryinfo.totalMem;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return 0L;
        }
        return l;
    }
}
