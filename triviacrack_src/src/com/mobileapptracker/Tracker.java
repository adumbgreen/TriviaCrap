// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import java.net.URLDecoder;

// Referenced classes of package com.mobileapptracker:
//            h

public class Tracker extends BroadcastReceiver
{

    public Tracker()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent == null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        String s;
        if (!intent.getAction().equals("com.android.vending.INSTALL_REFERRER"))
        {
            break MISSING_BLOCK_LABEL_147;
        }
        s = intent.getStringExtra("referrer");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        h h1;
        try
        {
            String s1 = URLDecoder.decode(s, "UTF-8");
            Log.d("MobileAppTracker", (new StringBuilder("MAT received referrer ")).append(s1).toString());
            context.getSharedPreferences("mat_referrer", 0).edit().putString("referrer", s1).commit();
            h1 = h.a();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        h1.f = true;
        if (h1.e && !h1.h)
        {
            synchronized (h1.l)
            {
                h1.l.notifyAll();
                h1.h = true;
            }
        }
        return;
        exception1;
        executorservice;
        JVM INSTR monitorexit ;
        throw exception1;
    }
}
