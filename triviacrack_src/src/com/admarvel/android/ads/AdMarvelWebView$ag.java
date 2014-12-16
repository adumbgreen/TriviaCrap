// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView

class a
    implements Runnable
{

    private final WeakReference a;

    public void run()
    {
        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
        if (admarvelwebview == null)
        {
            return;
        } else
        {
            admarvelwebview.setBackgroundColor(admarvelwebview.b);
            return;
        }
    }

    public (AdMarvelWebView admarvelwebview)
    {
        a = new WeakReference(admarvelwebview);
    }
}
