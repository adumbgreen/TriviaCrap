// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.os.Handler;
import com.mdotm.android.d.b;

// Referenced classes of package com.mdotm.android.view:
//            InterstitialImageView

class b extends Thread
{

    final InterstitialImageView a;
    private final b b;

    static InterstitialImageView a(b b1)
    {
        return b1.a;
    }

    public void run()
    {
        a.c = InterstitialImageView.a(a, b.m(), false);
        a.b.post(new Runnable(b) {

            final InterstitialImageView._cls3 a;
            private final b b;

            public void run()
            {
                InterstitialImageView._cls3.a(a).a(b, InterstitialImageView._cls3.a(a).c);
            }

            
            {
                a = InterstitialImageView._cls3.this;
                b = b1;
                super();
            }
        });
    }

    _cls1.b(InterstitialImageView interstitialimageview, b b1)
    {
        a = interstitialimageview;
        b = b1;
        super();
    }
}
