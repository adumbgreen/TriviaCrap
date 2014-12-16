// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.widget.ProgressBar;

// Referenced classes of package com.mdotm.android.view:
//            MdotMBannerView

class a extends Thread
{

    final MdotMBannerView a;

    public void run()
    {
        if (MdotMBannerView.g(a) != null)
        {
            MdotMBannerView.g(a).setVisibility(4);
            a.setBackgroundDrawable(MdotMBannerView.a());
        }
    }

    (MdotMBannerView mdotmbannerview)
    {
        a = mdotmbannerview;
        super();
    }
}
