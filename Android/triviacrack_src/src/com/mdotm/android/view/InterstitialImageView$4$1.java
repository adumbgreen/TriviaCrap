// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import com.mdotm.android.c.c;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.view:
//            InterstitialImageView

class b
    implements Runnable
{

    final b a;
    private final String b;

    public void run()
    {
        InterstitialImageView.a(b(a)).loadUrl(b);
    }

    ( , String s)
    {
        a = ;
        b = s;
        super();
    }

    // Unreferenced inner class com/mdotm/android/view/InterstitialImageView$4

/* anonymous class */
    class InterstitialImageView._cls4 extends Thread
    {

        final InterstitialImageView a;
        private final String b;

        static InterstitialImageView a(InterstitialImageView._cls4 _pcls4)
        {
            return _pcls4.a;
        }

        public void run()
        {
            try
            {
                Thread.sleep(10000L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            com.mdotm.android.view.InterstitialImageView.d(a).c();
            d.b(this, (new StringBuilder("Launch type is ")).append(InterstitialImageView.g(a)).toString());
            if (InterstitialImageView.g(a) == 2)
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b));
                intent.addFlags(0x10000000);
                try
                {
                    a.getContext().startActivity(intent);
                }
                catch (Exception exception)
                {
                    d.b(this, (new StringBuilder("Could not open browser on ad click to ")).append(exception).toString());
                }
                com.mdotm.android.view.InterstitialImageView.d(a).d();
                InterstitialImageView.b(a);
                return;
            } else
            {
                a.b.post(new InterstitialImageView._cls4._cls1(this, b));
                return;
            }
        }

            
            {
                a = interstitialimageview;
                b = s;
                super();
            }
    }

}
