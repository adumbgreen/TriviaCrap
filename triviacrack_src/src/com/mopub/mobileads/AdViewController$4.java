// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.view.View;

// Referenced classes of package com.mopub.mobileads:
//            AdViewController, MoPubView

class a
    implements Runnable
{

    final View a;
    final AdViewController b;

    public void run()
    {
        MoPubView mopubview = b.getMoPubView();
        if (mopubview == null)
        {
            return;
        } else
        {
            mopubview.removeAllViews();
            mopubview.addView(a, AdViewController.a(b, a));
            return;
        }
    }

    (AdViewController adviewcontroller, View view)
    {
        b = adviewcontroller;
        a = view;
        super();
    }
}
