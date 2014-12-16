// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.etermax.a.a;
import com.etermax.tools.d.g;
import com.etermax.tools.d.h;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.etermax.adsinterface.a:
//            g, a, h, b

public class f
{

    private com.etermax.adsinterface.a.a a;
    private FragmentActivity b;
    private g c;
    private WebView d;
    private com.etermax.adsinterface.a.g e;

    public f(FragmentActivity fragmentactivity, com.etermax.adsinterface.a.a a1)
    {
        b = fragmentactivity;
        a = a1;
    }

    static WebView a(f f1)
    {
        return f1.d;
    }

    static InputStream a(f f1, String s)
    {
        return f1.a(s);
    }

    private InputStream a(String s)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        httpurlconnection.setRequestMethod("GET");
        httpurlconnection.connect();
        if (httpurlconnection.getResponseCode() == 200)
        {
            return httpurlconnection.getInputStream();
        } else
        {
            return null;
        }
    }

    private String a(Bundle bundle, String s)
    {
        DisplayMetrics displaymetrics = b.getResources().getDisplayMetrics();
        int i = displaymetrics.densityDpi;
        String s1 = null;
        if (i >= 320)
        {
            s1 = bundle.getString("xhdpi");
        }
        if (s1 == null && displaymetrics.densityDpi >= 240)
        {
            s1 = bundle.getString("hdpi");
        }
        if (s1 == null && displaymetrics.densityDpi >= 160)
        {
            if (a(((Context) (b))))
            {
                s1 = bundle.getString("tablet");
            } else
            {
                s1 = bundle.getString("mdpi");
            }
        }
        if (s1 == null && displaymetrics.densityDpi >= 120)
        {
            s1 = bundle.getString("ldpi");
        }
        if (s1 == null && a(((Context) (b))))
        {
            s1 = bundle.getString("tablet");
        }
        if (s1 == null)
        {
            s1 = bundle.getString("mdpi");
        }
        return s1.replaceAll("\\{lang\\}", s);
    }

    private void a(String s, com.etermax.adsinterface.a.h h1)
    {
        d = new WebView(b);
        d.getSettings().setCacheMode(-1);
        d.getSettings().setJavaScriptEnabled(true);
        d.setWebViewClient(new WebViewClient(h1) {

            final com.etermax.adsinterface.a.h a;
            final f b;

            public void onPageFinished(WebView webview, String s1)
            {
                super.onPageFinished(webview, s1);
                a.contentLoadCompleted(com.etermax.adsinterface.a.f.a(b));
            }

            public void onReceivedError(WebView webview, int i, String s1, String s2)
            {
                super.onReceivedError(webview, i, s1, s2);
                a.contentLoadFailed(new Exception("Error loading web content"));
            }

            
            {
                b = f.this;
                a = h1;
                super();
            }
        });
        d.loadUrl(s);
    }

    static com.etermax.adsinterface.a.a b(f f1)
    {
        return f1.a;
    }

    private void b()
    {
        h h1 = new h(b, "admobcustom");
        h1.f = false;
        h1.d = android.graphics.Bitmap.CompressFormat.PNG;
        h1.i = true;
        c = g.a(b.getSupportFragmentManager(), h1);
    }

    static g c(f f1)
    {
        return f1.c;
    }

    static void d(f f1)
    {
        f1.b();
    }

    public void a()
    {
        if (e != null && e.getStatus() != android.os.AsyncTask.Status.FINISHED)
        {
            e.cancel(true);
            com.etermax.a.a.c("admob ads", (new StringBuilder()).append("CustomAdsContentLoader - cancel image fetcher - this: ").append(this).toString());
        }
        if (d != null)
        {
            d.destroy();
            com.etermax.a.a.c("admob ads", (new StringBuilder()).append("CustomAdsContentLoader - stop loading web - this: ").append(this).toString());
        }
    }

    public void a(com.etermax.adsinterface.a.h h1)
    {
        if (a.e() != null)
        {
            com.etermax.a.a.c("admob ads", (new StringBuilder()).append("CustomAdsContentLoader - loadContent - this: ").append(this).toString());
            Bundle bundle = a.e();
            String s = a(bundle, a.l());
            if (s == null)
            {
                h1.contentLoadFailed(new Exception("No valid links received"));
                return;
            }
            if (a.f() == b.b)
            {
                e = new com.etermax.adsinterface.a.g(this, h1);
                String s1 = a(bundle, a.m());
                e.execute(new String[] {
                    s, s1
                });
                return;
            } else
            {
                a(s, h1);
                return;
            }
        } else
        {
            h1.contentLoadFailed(new Exception("No content links received"));
            return;
        }
    }

    public boolean a(Context context)
    {
label0:
        {
            boolean flag;
            boolean flag1;
            boolean flag2;
            if ((0xf & context.getResources().getConfiguration().screenLayout) == 4)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if ((0xf & context.getResources().getConfiguration().screenLayout) == 3)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (!flag)
            {
                flag2 = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag2 = true;
        }
        return flag2;
    }
}
