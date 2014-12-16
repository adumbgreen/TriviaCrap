// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.widget.ProgressBar;

// Referenced classes of package com.mdotm.android.view:
//            InterstitialImageView

class a extends Thread
{

    final InterstitialImageView a;

    public void run()
    {
        if (InterstitialImageView.h(a) != null)
        {
            InterstitialImageView.h(a).setVisibility(0);
        }
    }

    (InterstitialImageView interstitialimageview)
    {
        a = interstitialimageview;
        super();
    }
}
