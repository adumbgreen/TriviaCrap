// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.etermax.a.a;
import com.etermax.k;
import java.io.UnsupportedEncodingException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.etermax.adsinterface.a:
//            a, m, f, l, 
//            h

public class i
    implements android.view.View.OnClickListener
{

    private Activity a;
    private com.etermax.adsinterface.a.a b;
    private m c;
    private f d;

    public i(Activity activity, com.etermax.adsinterface.a.a a1, m m1)
    {
        a = activity;
        b = a1;
        c = m1;
        String s = b.a();
        if (s != null)
        {
            if (!s.equals(""));
        }
    }

    static m a(i j)
    {
        return j.c;
    }

    private void a(String s)
    {
        (new Thread(new Runnable(s) {

            final String a;
            final i b;

            public void run()
            {
                try
                {
                    DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
                    defaulthttpclient.getParams().setParameter("http.useragent", "Custom user agent");
                    defaulthttpclient.execute(new HttpPost(a));
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            }

            
            {
                b = i.this;
                a = s;
                super();
            }
        })).start();
    }

    static Activity b(i j)
    {
        return j.a;
    }

    static com.etermax.adsinterface.a.a c(i j)
    {
        return j.b;
    }

    public void a()
    {
        if (b == null)
        {
            c.onFailedToReceiveAd();
            return;
        }
        if (!b.a(a))
        {
            c.onFailedToReceiveAd();
            return;
        }
        if (!(a instanceof FragmentActivity))
        {
            c.onFailedToReceiveAd();
            com.etermax.a.a.b("Admob ads", "CustomBannerContainer Custom banner can only be called from a FragmentActivity!");
            return;
        }
        try
        {
            d = new f((FragmentActivity)a, b);
            d.a(new h() {

                final i a;

                public void contentLoadCompleted(Bitmap bitmap)
                {
                    com.etermax.a.a.c("Admob ads", "CustomBannerContainerfinished loading custom image");
                    View view = LayoutInflater.from(i.b(a)).inflate(k.custom_banner_image, null);
                    ImageView imageview = (ImageView)view.findViewById(com.etermax.i.ad_image);
                    imageview.setImageBitmap(bitmap);
                    com.etermax.adsinterface.a.i.a(a).onReceivedAd(view);
                    imageview.setOnClickListener(a);
                    i.c(a).a(System.currentTimeMillis());
                }

                public void contentLoadCompleted(WebView webview)
                {
                    com.etermax.a.a.c("Admob ads", "CustomBannerContainer finished loading custom web content");
                    FrameLayout framelayout = (FrameLayout)LayoutInflater.from(i.b(a)).inflate(k.custom_banner_richmedia, new LinearLayout(i.b(a)), false);
                    framelayout.addView(webview, 0, new android.view.ViewGroup.LayoutParams(-1, -1));
                    com.etermax.adsinterface.a.i.a(a).onReceivedAd(framelayout);
                    framelayout.findViewById(com.etermax.i.click_interceptor).setOnClickListener(a);
                    i.c(a).a(System.currentTimeMillis());
                }

                public void contentLoadFailed(Exception exception1)
                {
                    com.etermax.a.a.c("Admob ads", (new StringBuilder()).append("CustomBannerContainer failed to load custom content: ").append(exception1.getMessage()).toString());
                    com.etermax.adsinterface.a.i.a(a).onFailedToReceiveAd();
                }

            
            {
                a = i.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            c.onFailedToReceiveAd();
        }
    }

    public void b()
    {
        if (d != null)
        {
            d.a();
        }
    }

    public void onClick(View view)
    {
        Intent intent;
        com.etermax.a.a.c("admob ads", "CustomBannerContainer - onClick");
        intent = new Intent();
        if (b.g() == null) goto _L2; else goto _L1
_L1:
        String s2 = b.g();
        intent.setClassName(view.getContext(), s2);
        if (b.a() != null)
        {
            intent.putExtra("com.etermax.gamescommon.from", b.a());
        }
_L4:
        intent.addFlags(0x14000000);
        a.startActivity(intent);
        a(b.d());
        c.onClick();
        return;
_L2:
        String s;
        String s1;
        s = b.c();
        if (!b.k())
        {
            break MISSING_BLOCK_LABEL_202;
        }
        s1 = ((l)a.getApplicationContext()).c(s);
_L5:
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(s1));
        if (true) goto _L4; else goto _L3
_L3:
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        com.etermax.a.a.a("ActivityNotFoundException", "CustomBannerContainer error while trying to open link", activitynotfoundexception);
        return;
        NullPointerException nullpointerexception;
        nullpointerexception;
        com.etermax.a.a.a("NullPointerException", "CustomBannerContainer error while trying to click link more than once", nullpointerexception);
        return;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        com.etermax.a.a.a("UnsupportedEncodingException", "error while trying to add session GET parameter in link", unsupportedencodingexception);
        return;
        s1 = s;
          goto _L5
    }
}
