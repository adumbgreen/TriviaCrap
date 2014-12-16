// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            ab, AdMarvelInternalWebView

public class e extends BroadcastReceiver
{

    private static String a = null;
    private static WeakReference b;

    public static void a(AdMarvelInternalWebView admarvelinternalwebview, String s)
    {
        b = new WeakReference(admarvelinternalwebview);
        if (s != null)
        {
            a = s;
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        String s;
        Boolean boolean1;
        Boolean boolean2;
        s = ab.a(context);
        boolean1 = Boolean.valueOf(false);
        if (!s.equals("mobile") && !s.equals("wifi"))
        {
            break MISSING_BLOCK_LABEL_165;
        }
        boolean2 = Boolean.valueOf(true);
_L4:
        if (b == null) goto _L2; else goto _L1
_L1:
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelinternalwebview == null) goto _L2; else goto _L3
_L3:
        if (a != null)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(a).append("(").append("'").append(boolean2).append("'").append(",").append("'").append(s).append("'").append(")").toString());
        }
_L2:
        return;
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append(exception.getMessage()).append(" Exception in AdMarvelConnectivityChangeReceiver ").toString());
        return;
        boolean2 = boolean1;
          goto _L4
    }

}
