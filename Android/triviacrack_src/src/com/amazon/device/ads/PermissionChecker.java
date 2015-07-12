// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;

class PermissionChecker
{

    private static PermissionCheckerExecutor executor = new PermissionCheckerExecutor();

    private PermissionChecker()
    {
    }

    public static final boolean hasInternetPermission(Context context)
    {
        return hasPermission(context, "android.permission.INTERNET");
    }

    public static final boolean hasPermission(Context context, String s)
    {
        return executor.hasPermission(context, s);
    }

    public static final boolean hasPhonePermission(Context context)
    {
        return hasPermission(context, "android.permission.CALL_PHONE");
    }

    public static final boolean hasReadCalendarPermission(Context context)
    {
        return hasPermission(context, "android.permission.READ_CALENDAR");
    }

    public static final boolean hasSmsPermission(Context context)
    {
        return hasPermission(context, "android.permission.SEND_SMS");
    }

    public static final boolean hasWriteCalendarPermission(Context context)
    {
        return hasPermission(context, "android.permission.WRITE_CALENDAR");
    }

    public static final boolean hasWriteExternalStoragePermission(Context context)
    {
        return hasPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }


    private class PermissionCheckerExecutor
    {

        public boolean hasPermission(Context context, String s)
        {
            return context.checkCallingOrSelfPermission(s) == 0;
        }

        public PermissionCheckerExecutor()
        {
        }
    }

}
