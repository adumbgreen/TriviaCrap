// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.admarvel.android.util.Logging;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class a
    implements Runnable
{

    final AdMarvelVideoActivity a;

    public void run()
    {
        if (!AdMarvelVideoActivity.k(a) || AdMarvelVideoActivity.i(a) == null)
        {
            return;
        }
        int i;
        String s1;
        AdMarvelVideoActivity.i(a).setVisibility(0);
        i = AdMarvelVideoActivity.l(a) - AdMarvelVideoActivity.a(a, System.currentTimeMillis() - AdMarvelVideoActivity.m(a));
        if (AdMarvelVideoActivity.n(a) == null || AdMarvelVideoActivity.n(a).length() <= 0 || !AdMarvelVideoActivity.n(a).contains("@seconds"))
        {
            break MISSING_BLOCK_LABEL_144;
        }
        s1 = AdMarvelVideoActivity.n(a).replace("@seconds", String.valueOf(i));
_L1:
        Exception exception;
        ((TextView)AdMarvelVideoActivity.i(a).getChildAt(0)).setText(s1);
        return;
        String s;
        try
        {
            s = (new StringBuilder()).append("You Can Skip Ad in ").append(i).append(" seconds").toString();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        s1 = s;
          goto _L1
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
