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
import com.mdotm.android.c.a;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.view:
//            MdotMActivity

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        if (a.a)
        {
            d.a(this, "timeout loading landing url");
            com.mdotm.android.view.MdotMActivity.a(com.mdotm.android.view.a(a)).stopLoading();
            com.mdotm.android.view.a(a).b = false;
            a.a = false;
        }
    }

    <init>(<init> <init>1)
    {
        a = <init>1;
        super();
    }

    // Unreferenced inner class com/mdotm/android/view/MdotMActivity$1

/* anonymous class */
    class MdotMActivity._cls1 extends WebViewClient
    {

        boolean a;
        Runnable b;
        final MdotMActivity c;

        static MdotMActivity a(MdotMActivity._cls1 _pcls1)
        {
            return _pcls1.c;
        }

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            a = false;
            d.b(this, (new StringBuilder("Click page finished ")).append(s).toString());
            c.b = false;
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            d.b(this, (new StringBuilder("started Loading url ")).append(s).toString());
            if (c.b)
            {
                a = true;
                c.a.removeCallbacks(b);
                c.a.postDelayed(b, 15000L);
            }
            super.onPageStarted(webview, s, bitmap);
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            super.onReceivedError(webview, i, s, s1);
            a = false;
            if (c.b)
            {
                d.a(this, (new StringBuilder("Unable to load landing url : ")).append(s).toString());
            }
            c.b = false;
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            d.b(this, (new StringBuilder("returned url ")).append(s).toString());
            if (s != null && s.startsWith("market://"))
            {
                try
                {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                    webview.getContext().startActivity(intent);
                    if (MdotMActivity.b(c) != null)
                    {
                        MdotMActivity.b(c).b();
                    }
                }
                catch (Exception exception)
                {
                    d.a(this, "Google Play store app is not installed");
                    exception.printStackTrace();
                }
                c.b = false;
                a = false;
                return true;
            } else
            {
                d.b(this, (new StringBuilder("loading other url ")).append(s).toString());
                return super.shouldOverrideUrlLoading(webview, s);
            }
        }

            
            {
                c = mdotmactivity;
                super();
                b = new MdotMActivity._cls1._cls1(this);
            }
    }

}
