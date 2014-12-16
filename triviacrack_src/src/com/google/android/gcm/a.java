// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.sql.Timestamp;

// Referenced classes of package com.google.android.gcm:
//            GCMBroadcastReceiver

public final class a
{

    private static GCMBroadcastReceiver a;
    private static String b;

    static String a(Context context, String s)
    {
        SharedPreferences sharedpreferences = l(context);
        String s1 = sharedpreferences.getString("regId", "");
        int i1 = k(context);
        Log.v("GCMRegistrar", (new StringBuilder()).append("Saving regId on app version ").append(i1).toString());
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("regId", s);
        editor.putInt("appVersion", i1);
        editor.commit();
        return s1;
    }

    static transient String a(String as[])
    {
        if (as == null || as.length == 0)
        {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringbuilder = new StringBuilder(as[0]);
        for (int i1 = 1; i1 < as.length; i1++)
        {
            stringbuilder.append(',').append(as[i1]);
        }

        return stringbuilder.toString();
    }

    public static void a(Context context)
    {
        int i1 = android.os.Build.VERSION.SDK_INT;
        if (i1 < 8)
        {
            throw new UnsupportedOperationException((new StringBuilder()).append("Device must be at least API Level 8 (instead of ").append(i1).append(")").toString());
        }
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            packagemanager.getPackageInfo("com.google.android.gsf", 0);
            return;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new UnsupportedOperationException("Device does not have package com.google.android.gsf");
        }
    }

    static void a(Context context, int i1)
    {
        android.content.SharedPreferences.Editor editor = l(context).edit();
        editor.putInt("backoff_ms", i1);
        editor.commit();
    }

    public static void a(Context context, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = l(context).edit();
        editor.putBoolean("onServer", flag);
        long l1 = h(context) + System.currentTimeMillis();
        Log.v("GCMRegistrar", (new StringBuilder()).append("Setting registeredOnServer status as ").append(flag).append(" until ").append(new Timestamp(l1)).toString());
        editor.putLong("onServerExpirationTime", l1);
        editor.commit();
    }

    public static transient void a(Context context, String as[])
    {
        i(context);
        b(context, as);
    }

    static void a(String s)
    {
        Log.v("GCMRegistrar", (new StringBuilder()).append("Setting the name of retry receiver class to ").append(s).toString());
        b = s;
    }

    static void b(Context context)
    {
        Log.v("GCMRegistrar", (new StringBuilder()).append("Unregistering app ").append(context.getPackageName()).toString());
        Intent intent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
        intent.setPackage("com.google.android.gsf");
        intent.putExtra("app", PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        context.startService(intent);
    }

    static transient void b(Context context, String as[])
    {
        String s = a(as);
        Log.v("GCMRegistrar", (new StringBuilder()).append("Registering app ").append(context.getPackageName()).append(" of senders ").append(s).toString());
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gsf");
        intent.putExtra("app", PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        intent.putExtra("sender", s);
        context.startService(intent);
    }

    static void c(Context context)
    {
        com/google/android/gcm/a;
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        if (b != null) goto _L4; else goto _L3
_L3:
        Log.e("GCMRegistrar", "internal error: retry receiver class not set yet");
        a = new GCMBroadcastReceiver();
_L5:
        String s = context.getPackageName();
        IntentFilter intentfilter = new IntentFilter("com.google.android.gcm.intent.RETRY");
        intentfilter.addCategory(s);
        String s1 = (new StringBuilder()).append(s).append(".permission.C2D_MESSAGE").toString();
        Log.v("GCMRegistrar", "Registering receiver");
        context.registerReceiver(a, intentfilter, s1, null);
_L2:
        com/google/android/gcm/a;
        JVM INSTR monitorexit ;
        return;
_L4:
        a = (GCMBroadcastReceiver)Class.forName(b).newInstance();
          goto _L5
        Exception exception1;
        exception1;
        Log.e("GCMRegistrar", (new StringBuilder()).append("Could not create instance of ").append(b).append(". Using ").append(com/google/android/gcm/GCMBroadcastReceiver.getName()).append(" directly.").toString());
        a = new GCMBroadcastReceiver();
          goto _L5
        Exception exception;
        exception;
        throw exception;
    }

    public static String d(Context context)
    {
        SharedPreferences sharedpreferences = l(context);
        String s = sharedpreferences.getString("regId", "");
        int i1 = sharedpreferences.getInt("appVersion", 0x80000000);
        int j1 = k(context);
        if (i1 != 0x80000000 && i1 != j1)
        {
            Log.v("GCMRegistrar", (new StringBuilder()).append("App version changed from ").append(i1).append(" to ").append(j1).append("; resetting registration id").toString());
            f(context);
            s = "";
        }
        return s;
    }

    public static boolean e(Context context)
    {
        return d(context).length() > 0;
    }

    static String f(Context context)
    {
        return a(context, "");
    }

    public static boolean g(Context context)
    {
        SharedPreferences sharedpreferences = l(context);
        boolean flag = sharedpreferences.getBoolean("onServer", false);
        Log.v("GCMRegistrar", (new StringBuilder()).append("Is registered on server: ").append(flag).toString());
        if (flag)
        {
            long l1 = sharedpreferences.getLong("onServerExpirationTime", -1L);
            if (System.currentTimeMillis() > l1)
            {
                Log.v("GCMRegistrar", (new StringBuilder()).append("flag expired on: ").append(new Timestamp(l1)).toString());
                return false;
            }
        }
        return flag;
    }

    public static long h(Context context)
    {
        return l(context).getLong("onServerLifeSpan", 0x240c8400L);
    }

    static void i(Context context)
    {
        Log.d("GCMRegistrar", (new StringBuilder()).append("resetting backoff for ").append(context.getPackageName()).toString());
        a(context, 3000);
    }

    static int j(Context context)
    {
        return l(context).getInt("backoff_ms", 3000);
    }

    private static int k(Context context)
    {
        int i1;
        try
        {
            i1 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Coult not get package name: ").append(namenotfoundexception).toString());
        }
        return i1;
    }

    private static SharedPreferences l(Context context)
    {
        return context.getSharedPreferences("com.google.android.gcm", 0);
    }
}
