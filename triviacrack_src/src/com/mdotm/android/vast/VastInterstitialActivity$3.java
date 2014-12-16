// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.view.View;
import android.widget.ImageView;

// Referenced classes of package com.mdotm.android.vast:
//            VastInterstitialActivity, f

class a
    implements android.view.ctivity._cls3
{

    final VastInterstitialActivity a;

    public void onClick(View view)
    {
        if (view.isSelected())
        {
            VastInterstitialActivity.b(a).setBackgroundResource(0x1080024);
            VastInterstitialActivity.c(a).c();
            view.setSelected(false);
            return;
        } else
        {
            VastInterstitialActivity.b(a).setBackgroundResource(0x1080023);
            VastInterstitialActivity.c(a).b();
            view.setSelected(true);
            return;
        }
    }

    (VastInterstitialActivity vastinterstitialactivity)
    {
        a = vastinterstitialactivity;
        super();
    }
}
