// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView

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
        AdMarvelWebView admarvelwebview = (AdMarvelWebView)b.get();
        Context context;
        if (admarvelwebview != null)
        {
            if ((context = admarvelwebview.getContext()) != null)
            {
                a = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
                AdMarvelWebView.a(admarvelwebview, a);
                return;
            }
        }
    }


    public (AdMarvelWebView admarvelwebview)
    {
        b = new WeakReference(admarvelwebview);
    }
}
