// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import com.admarvel.android.util.Logging;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, u

class b
    implements Runnable
{

    final AdMarvelWebView a;
    private final String b;

    public void run()
    {
        if (!AdMarvelWebView.T(a))
        {
            Logging.log((new StringBuilder()).append("onPagFinished is not  called after delay").append(u.b).toString());
            AdMarvelWebView.n(a, b);
        }
    }

    public (AdMarvelWebView admarvelwebview, String s)
    {
        a = admarvelwebview;
        super();
        b = s;
    }
}
