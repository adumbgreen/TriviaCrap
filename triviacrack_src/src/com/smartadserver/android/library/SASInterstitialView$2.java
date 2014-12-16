// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library;

import android.view.View;
import android.widget.FrameLayout;

// Referenced classes of package com.smartadserver.android.library:
//            SASInterstitialView

class a
    implements Runnable
{

    final View a;
    final SASInterstitialView b;

    public void run()
    {
        FrameLayout framelayout = b.getExpandParentView();
        if (framelayout != null && a != null)
        {
            framelayout.addView(a);
        }
    }

    (SASInterstitialView sasinterstitialview, View view)
    {
        b = sasinterstitialview;
        a = view;
        super();
    }
}
