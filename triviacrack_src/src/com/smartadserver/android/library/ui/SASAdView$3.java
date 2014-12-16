// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import com.smartadserver.android.library.d.a;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView, g

class a
    implements Runnable
{

    final android.view.Listener a;
    final SASAdView b;

    public void run()
    {
        b.j.setCloseButtonVisibility(0);
        b.j.a(-1, -1);
        if (b.l != null)
        {
            b.j.setCloseButtonPosition(b.l.g());
        }
        b.j.setCloseButtonOnClickListener(a);
    }

    (SASAdView sasadview, android.view.Listener listener)
    {
        b = sasadview;
        a = listener;
        super();
    }
}
