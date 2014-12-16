// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.view.View;
import com.smartadserver.android.library.controller.a;
import com.smartadserver.android.library.controller.mraid.f;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView

class a
    implements Runnable
{

    final SASAdView a;

    public void run()
    {
        if (com.smartadserver.android.library.ui.SASAdView.a(a))
        {
            com.smartadserver.android.library.ui.SASAdView.f(a);
            SASAdView.g(a);
            SASAdView.e(a).setVisibility(8);
            com.smartadserver.android.library.ui.SASAdView.a(a, false);
            com.smartadserver.android.library.ui.SASAdView.a(a, null);
            SASAdView.h(a);
        }
        a.g.c.b();
        a.post(new Runnable() {

            final SASAdView._cls7 a;

            public void run()
            {
                a.a.g.a.a(a.a.getWidth(), a.a.getHeight());
            }

            
            {
                a = SASAdView._cls7.this;
                super();
            }
        });
    }

    _cls1.a(SASAdView sasadview)
    {
        a = sasadview;
        super();
    }
}
