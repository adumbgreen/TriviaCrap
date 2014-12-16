// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.widget.RelativeLayout;

// Referenced classes of package com.mdotm.android.vast:
//            VastInterstitialActivity

class a
    implements Runnable
{

    final VastInterstitialActivity a;

    public void run()
    {
        if (VastInterstitialActivity.a(a) != null)
        {
            VastInterstitialActivity.a(a).setVisibility(0);
        }
    }

    (VastInterstitialActivity vastinterstitialactivity)
    {
        a = vastinterstitialactivity;
        super();
    }
}
