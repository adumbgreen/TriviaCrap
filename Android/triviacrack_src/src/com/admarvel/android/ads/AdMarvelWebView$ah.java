// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.view.Display;
import android.view.WindowManager;
import java.lang.ref.WeakReference;

class b
    implements Runnable
{

    private final WeakReference a;
    private String b;
    private Activity c;

    public void run()
    {
        c = (Activity)a.get();
        if (c != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Display display;
        display = ((WindowManager)c.getSystemService("window")).getDefaultDisplay();
        if (b.equalsIgnoreCase("Portrait"))
        {
            c.setRequestedOrientation(1);
            return;
        }
        if (!b.equalsIgnoreCase("LandscapeLeft"))
        {
            break; /* Loop/switch isn't completed */
        }
        c.setRequestedOrientation(0);
        if (display.getRotation() != 1)
        {
            c.setRequestedOrientation(8);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (b.equalsIgnoreCase("PortraitUpSideDown"))
        {
            c.setRequestedOrientation(9);
            return;
        }
        if (!b.equalsIgnoreCase("LandscapeRight"))
        {
            continue; /* Loop/switch isn't completed */
        }
        c.setRequestedOrientation(8);
        if (display.getRotation() != 3)
        {
            c.setRequestedOrientation(0);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (!b.equalsIgnoreCase("none")) goto _L1; else goto _L4
_L4:
        if (display.getRotation() == 2)
        {
            c.setRequestedOrientation(9);
            return;
        }
        if (display.getRotation() == 3)
        {
            c.setRequestedOrientation(8);
            if (display.getRotation() != 3)
            {
                c.setRequestedOrientation(0);
                return;
            }
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public (Activity activity, String s)
    {
        b = null;
        c = null;
        a = new WeakReference(activity);
        b = s;
    }
}
