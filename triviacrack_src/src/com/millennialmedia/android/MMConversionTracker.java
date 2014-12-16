// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import java.lang.reflect.Field;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.TreeMap;

// Referenced classes of package com.millennialmedia.android:
//            MMRequest, MMSDK, HandShake, MMLog, 
//            HttpGetRequest

final class MMConversionTracker
{

    MMConversionTracker()
    {
    }

    protected static void a(Context context, String s, MMRequest mmrequest)
    {
        int i = 0;
        com/millennialmedia/android/MMConversionTracker;
        JVM INSTR monitorenter ;
        if (context == null || s == null) goto _L2; else goto _L1
_L1:
        int j = s.length();
        if (j != 0) goto _L3; else goto _L2
_L2:
        com/millennialmedia/android/MMConversionTracker;
        JVM INSTR monitorexit ;
        return;
_L3:
        SharedPreferences sharedpreferences;
        boolean flag;
        String s1;
        TreeMap treemap;
        sharedpreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        flag = sharedpreferences.getBoolean((new StringBuilder()).append("firstLaunch_").append(s).toString(), true);
        s1 = sharedpreferences.getString("installReferrer", null);
        treemap = new TreeMap();
        if (mmrequest == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        mmrequest.a(treemap);
        MMRequest.b(treemap);
        if (s1 == null) goto _L5; else goto _L4
_L4:
        String as[];
        int k;
        as = s1.split("&");
        k = as.length;
_L12:
        if (i >= k) goto _L5; else goto _L6
_L6:
        String as1[] = as[i].split("=");
        if (as1.length >= 2)
        {
            treemap.put(as1[0], as1[1]);
        }
        break MISSING_BLOCK_LABEL_416;
_L5:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putBoolean((new StringBuilder()).append("firstLaunch_").append(s).toString(), false);
        editor.commit();
        android.content.pm.PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        long l2 = packageinfo.getClass().getField("firstInstallTime").getLong(packageinfo);
        long l = l2;
_L9:
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_409;
        }
        long l1;
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.setTimeInMillis(l);
        gregoriancalendar.setTimeZone(TimeZone.getTimeZone("GMT"));
        l1 = gregoriancalendar.getTimeInMillis();
_L11:
        if (!MMSDK.a(context)) goto _L8; else goto _L7
_L7:
        treemap.put("ua", (new StringBuilder()).append("Android:").append(Build.MODEL).toString());
        treemap.put("apid", HandShake.a);
        MMSDK.a(context, treemap);
        Utils.ThreadUtils.a(new Runnable(s, flag, l1, treemap) {

            final String a;
            final boolean b;
            final long c;
            final TreeMap d;

            public void run()
            {
                HttpGetRequest httpgetrequest = new HttpGetRequest();
                try
                {
                    httpgetrequest.a(a, b, c, d);
                    return;
                }
                catch (Exception exception2)
                {
                    MMLog.a("MMConversionTracker", "Problem doing conversion tracking.", exception2);
                }
            }

            
            {
                a = s;
                b = flag;
                c = l;
                d = treemap;
                super();
            }
        });
          goto _L2
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        MMLog.a("MMConversionTracker", "Error with firstInstallTime", exception1);
_L10:
        l = 0L;
          goto _L9
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        MMLog.a("MMConversionTracker", "Can't find packagename: ", namenotfoundexception);
          goto _L10
_L8:
        MMLog.d("MMConversionTracker", "No network available for conversion tracking.");
          goto _L2
        l1 = l;
          goto _L11
        i++;
          goto _L12
    }
}
