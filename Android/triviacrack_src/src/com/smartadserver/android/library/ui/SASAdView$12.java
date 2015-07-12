// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.view.View;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView, g

class a
    implements android.view.istener
{

    final SASAdView a;

    public void onClick(View view)
    {
        if (!a.m && a.k.d())
        {
            SASAdView.f(a);
            if (SASAdView.c(a) != null)
            {
                a.setLayoutParams(SASAdView.c(a));
            }
            return;
        } else
        {
            a.g();
            return;
        }
    }

    (SASAdView sasadview)
    {
        a = sasadview;
        super();
    }
}
