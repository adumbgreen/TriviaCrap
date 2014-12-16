// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

class b
    implements Runnable
{

    private static int a = 0x80000000;
    private final WeakReference b;

    private int a()
    {
        return a;
    }

    static int a(a a1)
    {
        return a1.a();
    }

    public void run()
    {
        try
        {
            if (b.get() != null)
            {
                a = ((WindowManager)((Activity)b.get()).getSystemService("window")).getDefaultDisplay().getRotation();
            }
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
    }


    public (Activity activity)
    {
        b = new WeakReference(activity);
    }
}
