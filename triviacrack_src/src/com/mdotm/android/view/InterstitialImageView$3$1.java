// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.os.Handler;
import com.mdotm.android.d.b;

// Referenced classes of package com.mdotm.android.view:
//            InterstitialImageView

class b
    implements Runnable
{

    final a a;
    private final b b;

    public void run()
    {
        b(a).a(b, b(a).c);
    }

    ( , b b1)
    {
        a = ;
        b = b1;
        super();
    }

    // Unreferenced inner class com/mdotm/android/view/InterstitialImageView$3

/* anonymous class */
    class InterstitialImageView._cls3 extends Thread
    {

        final InterstitialImageView a;
        private final b b;

        static InterstitialImageView a(InterstitialImageView._cls3 _pcls3)
        {
            return _pcls3.a;
        }

        public void run()
        {
            a.c = InterstitialImageView.a(a, b.m(), false);
            a.b.post(new InterstitialImageView._cls3._cls1(this, b));
        }

            
            {
                a = interstitialimageview;
                b = b1;
                super();
            }
    }

}
