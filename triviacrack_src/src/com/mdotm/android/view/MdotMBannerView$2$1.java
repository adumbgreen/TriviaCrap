// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.webkit.WebView;
import com.mdotm.android.c.c;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.view:
//            MdotMBannerView

class b
    implements Runnable
{

    final b a;
    private final String b;

    public void run()
    {
        MdotMBannerView.a(b(a)).loadUrl(b);
    }

    ( , String s)
    {
        a = ;
        b = s;
        super();
    }

    // Unreferenced inner class com/mdotm/android/view/MdotMBannerView$2

/* anonymous class */
    class MdotMBannerView._cls2 extends Thread
    {

        final MdotMBannerView a;
        private final String b;

        static MdotMBannerView a(MdotMBannerView._cls2 _pcls2)
        {
            return _pcls2.a;
        }

        public void run()
        {
            d.b(this, (new StringBuilder("Destination url is ")).append(b).toString());
            com.mdotm.android.view.MdotMBannerView.d(a).c();
            d.b(this, (new StringBuilder("Launch type is ")).append(MdotMBannerView.f(a)).toString());
            if (MdotMBannerView.f(a) == 2)
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b));
                intent.addFlags(0x10000000);
                Log.d("BannerAd", "clicked and new flag activity created");
                try
                {
                    a.getContext().startActivity(intent);
                }
                catch (Exception exception)
                {
                    d.b(this, (new StringBuilder("Could not open browser on ad click to ")).append(exception).toString());
                }
                com.mdotm.android.view.MdotMBannerView.d(a).d();
                MdotMBannerView.b(a);
                return;
            } else
            {
                a.c.post(new MdotMBannerView._cls2._cls1(this, b));
                return;
            }
        }

            
            {
                a = mdotmbannerview;
                b = s;
                super();
            }
    }

}
