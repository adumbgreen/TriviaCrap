// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library;

import android.view.View;
import android.widget.FrameLayout;
import com.smartadserver.android.library.h.c;

// Referenced classes of package com.smartadserver.android.library:
//            SASInterstitialView

class a
    implements Runnable
{

    final View a;
    final SASInterstitialView b;

    public void run()
    {
        c.a(SASInterstitialView.d(), "REMOVE INTERSTITIAL LOADER VIEW");
        FrameLayout framelayout = b.getExpandParentView();
        if (framelayout != null && framelayout.indexOfChild(a) > -1)
        {
            framelayout.removeView(a);
        }
    }

    (SASInterstitialView sasinterstitialview, View view)
    {
        b = sasinterstitialview;
        a = view;
        super();
    }
}
