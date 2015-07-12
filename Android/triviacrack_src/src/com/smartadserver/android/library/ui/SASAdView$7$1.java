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

    final eight a;

    public void run()
    {
        a.a.g.a.a(a.a.getWidth(), a.a.getHeight());
    }

    f(f f)
    {
        a = f;
        super();
    }

    // Unreferenced inner class com/smartadserver/android/library/ui/SASAdView$7

/* anonymous class */
    class SASAdView._cls7
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
            a.post(new SASAdView._cls7._cls1(this));
        }

            
            {
                a = sasadview;
                super();
            }
    }

}
