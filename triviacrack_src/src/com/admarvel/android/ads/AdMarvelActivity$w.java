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

    private final WeakReference a;
    private String b;
    private Activity c;

    public void run()
    {
        Display display;
        try
        {
            c = (Activity)a.get();
            if (c == null)
            {
                break MISSING_BLOCK_LABEL_286;
            }
            if (b == null)
            {
                return;
            }
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        display = ((WindowManager)c.getSystemService("window")).getDefaultDisplay();
        if (b.equalsIgnoreCase("Portrait"))
        {
            c.setRequestedOrientation(1);
            if (display.getRotation() != 0)
            {
                c.setRequestedOrientation(9);
                return;
            }
            break MISSING_BLOCK_LABEL_286;
        }
        if (b.equalsIgnoreCase("LandscapeLeft"))
        {
            c.setRequestedOrientation(0);
            if (display.getRotation() != 1)
            {
                c.setRequestedOrientation(8);
                return;
            }
            break MISSING_BLOCK_LABEL_286;
        }
        if (b.equalsIgnoreCase("PortraitUpSideDown"))
        {
            c.setRequestedOrientation(9);
            if (display.getRotation() != 2)
            {
                c.setRequestedOrientation(1);
                return;
            }
            break MISSING_BLOCK_LABEL_286;
        }
        if (b.equalsIgnoreCase("LandscapeRight"))
        {
            c.setRequestedOrientation(8);
            if (display.getRotation() != 3)
            {
                c.setRequestedOrientation(0);
                return;
            }
            break MISSING_BLOCK_LABEL_286;
        }
        if (!b.equalsIgnoreCase("none"))
        {
            break MISSING_BLOCK_LABEL_286;
        }
        if (display.getRotation() == 2)
        {
            c.setRequestedOrientation(9);
            if (display.getRotation() != 2)
            {
                c.setRequestedOrientation(1);
                return;
            }
            break MISSING_BLOCK_LABEL_286;
        }
        if (display.getRotation() == 3)
        {
            c.setRequestedOrientation(8);
            if (display.getRotation() != 3)
            {
                c.setRequestedOrientation(0);
            }
        }
    }

    public (Activity activity, String s)
    {
        b = null;
        c = null;
        a = new WeakReference(activity);
        b = s;
    }
}
