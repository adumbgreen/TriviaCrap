// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library;

import android.view.View;

// Referenced classes of package com.smartadserver.android.library:
//            SASBannerView

class a
    implements Runnable
{

    final View a;
    final SASBannerView b;

    public void run()
    {
        if (b.indexOfChild(a) > -1)
        {
            b.removeView(a);
        }
    }

    (SASBannerView sasbannerview, View view)
    {
        b = sasbannerview;
        a = view;
        super();
    }
}
