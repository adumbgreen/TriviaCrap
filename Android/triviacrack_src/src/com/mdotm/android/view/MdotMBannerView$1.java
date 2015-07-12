// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mdotm.android.c.c;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.view:
//            MdotMBannerView

class a extends WebViewClient
{

    boolean a;
    Runnable b;
    final MdotMBannerView c;

    static MdotMBannerView a(a a1)
    {
        return a1.c;
    }

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        a = false;
        d.b(this, (new StringBuilder("Click page finished ")).append(s).toString());
        MdotMBannerView.b(c);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        d.b(this, (new StringBuilder("started Loading url ")).append(s).toString());
        if (com.mdotm.android.view.MdotMBannerView.c(c))
        {
            a = true;
            c.c.removeCallbacks(b);
            c.c.postDelayed(b, 15000L);
        }
        super.onPageStarted(webview, s, bitmap);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        a = false;
        if (com.mdotm.android.view.MdotMBannerView.c(c))
        {
            d.a(this, (new StringBuilder("Unable to load landing url : ")).append(s).toString());
        }
        MdotMBannerView.b(c);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        d.b(this, (new StringBuilder("returned url ")).append(s).toString());
        if (s != null && s.startsWith("market://"))
        {
            try
            {
                webview.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
                com.mdotm.android.view.MdotMBannerView.d(c).d();
            }
            catch (Exception exception)
            {
                d.a(this, "Google Play store app is not installed");
                exception.printStackTrace();
            }
            MdotMBannerView.b(c);
            a = false;
            return true;
        } else
        {
            d.b(this, (new StringBuilder("loading other url ")).append(s).toString());
            return super.shouldOverrideUrlLoading(webview, s);
        }
    }

    _cls1.a(MdotMBannerView mdotmbannerview)
    {
        c = mdotmbannerview;
        super();
        b = new Runnable() {

            final MdotMBannerView._cls1 a;

            public void run()
            {
                if (a.a)
                {
                    d.a(this, "timeout loading landing url");
                    MdotMBannerView.a(MdotMBannerView._cls1.a(a)).stopLoading();
                    MdotMBannerView.b(MdotMBannerView._cls1.a(a));
                    a.a = false;
                }
            }

            
            {
                a = MdotMBannerView._cls1.this;
                super();
            }
        };
    }
}
