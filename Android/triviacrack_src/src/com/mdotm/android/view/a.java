// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.mdotm.android.c.c;
import com.mdotm.android.d.b;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.view:
//            MdotMWebView

public class a extends RelativeLayout
{

    Handler a;
    private c b;
    private b c;
    private ProgressBar d;
    private boolean e;
    private WebView f;
    private int g;
    private int h;

    public a(Context context, b b1, c c1, int i)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams;
        super(context);
        f = null;
        com.mdotm.android.e.d.b(this, "html resource HtmlView");
        a = new Handler();
        b = c1;
        c = b1;
        getHeightAndWidth();
        layoutparams = new android.widget.RelativeLayout.LayoutParams(b(i), a(i));
        if (1 != i) goto _L2; else goto _L1
_L1:
        d();
_L4:
        layoutparams.addRule(2);
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
        setGravity(17);
        d = new ProgressBar(getContext());
        d.setIndeterminate(false);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(40, 40);
        d.setLayoutParams(layoutparams1);
        d.setVisibility(4);
        d.setMinimumHeight(8);
        d.setMinimumWidth(8);
        d.setMax(100);
        if (d != null)
        {
            d.setId(3);
            layoutparams1.addRule(13);
        }
        addView(d);
        f = new WebView(context);
        f.getSettings().setJavaScriptEnabled(true);
        f.setWebViewClient(new WebViewClient() {

            boolean a;
            Runnable b;
            final a c;

            static a a(_cls1 _pcls1)
            {
                return _pcls1.c;
            }

            public void onPageFinished(WebView webview, String s)
            {
                super.onPageFinished(webview, s);
                a = false;
                com.mdotm.android.e.d.b(this, (new StringBuilder("Click page finished ")).append(s).toString());
                com.mdotm.android.view.a.b(c);
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("started Loading url ")).append(s).toString());
                if (com.mdotm.android.view.a.c(c))
                {
                    a = true;
                    c.a.removeCallbacks(b);
                    c.a.postDelayed(b, 15000L);
                }
                super.onPageStarted(webview, s, bitmap);
            }

            public void onReceivedError(WebView webview, int j, String s, String s1)
            {
                super.onReceivedError(webview, j, s, s1);
                a = false;
                if (com.mdotm.android.view.a.c(c))
                {
                    com.mdotm.android.e.d.a(this, (new StringBuilder("Unable to load landing url : ")).append(s).toString());
                } else
                {
                    com.mdotm.android.e.d.a(this, (new StringBuilder("Unable to report impression : ")).append(s).toString());
                }
                com.mdotm.android.view.a.b(c);
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("returned url ")).append(s).toString());
                if (s != null && s.startsWith("market://"))
                {
                    try
                    {
                        webview.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
                        com.mdotm.android.view.a.d(c).d();
                    }
                    catch (Exception exception)
                    {
                        com.mdotm.android.e.d.a(this, "Google Play store app is not installed");
                        exception.printStackTrace();
                    }
                    a = false;
                    com.mdotm.android.view.a.b(c);
                    return true;
                } else
                {
                    com.mdotm.android.e.d.b(this, (new StringBuilder("loading other url ")).append(s).toString());
                    return super.shouldOverrideUrlLoading(webview, s);
                }
            }

            
            {
                c = a.this;
                super();
                b = new _cls1(this);
            }
        });
        a(context, i);
        return;
_L2:
        if (!c.a())
        {
            e();
            com.mdotm.android.e.d.a(this, "Normal interstitial");
        } else
        if (c.a())
        {
            f();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private int a(int i)
    {
        if (1 == i)
        {
            com.mdotm.android.e.d.c(this, (new StringBuilder("mod = ")).append(c.i()).toString());
            return (75 * h) / 100;
        }
        if (c.a())
        {
            return c.i();
        } else
        {
            return h - c(25);
        }
    }

    static WebView a(a a1)
    {
        return a1.f;
    }

    private void a(Context context, int i)
    {
        addView(new MdotMWebView(context, c, b, i));
        RelativeLayout relativelayout = new RelativeLayout(context);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(c.h(), c.i());
        layoutparams.addRule(13);
        relativelayout.setLayoutParams(layoutparams);
        relativelayout.setBackgroundColor(0);
        addView(relativelayout);
    }

    private boolean a()
    {
        return e;
    }

    private int b(int i)
    {
        if (1 == i)
        {
            return (75 * g) / 100;
        } else
        {
            return g;
        }
    }

    private void b()
    {
        com.mdotm.android.e.d.b(this, "On ad network completed");
        setAdSelectionInProgress(false);
        c();
    }

    static void b(a a1)
    {
        a1.b();
    }

    private int c(int i)
    {
        return (int)(0.5F + getContext().getResources().getDisplayMetrics().density * (float)i);
    }

    private void c()
    {
        post(new Thread() {

            final a a;

            public void run()
            {
                if (a.e(a) != null)
                {
                    a.e(a).setVisibility(4);
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    static boolean c(a a1)
    {
        return a1.a();
    }

    static c d(a a1)
    {
        return a1.b;
    }

    private void d()
    {
        String s = c.d();
        com.mdotm.android.e.d.c(this, (new StringBuilder("before mod = ")).append(c.d()).toString());
        com.mdotm.android.e.d.c(this, (new StringBuilder("mod height = ")).append(c.i()).toString());
        com.mdotm.android.e.d.c(this, (new StringBuilder("mod width = ")).append(c.h()).toString());
        String s1 = s.replaceAll("width='\\d+'", (new StringBuilder("width='")).append(b(1)).append("'").toString()).replaceAll("width:\\d+", (new StringBuilder("width:")).append(b(1)).toString()).replaceAll("height='\\d+'", (new StringBuilder("height='")).append(a(1)).append("'").toString()).replaceAll("height:\\d+", (new StringBuilder("height:")).append(a(1)).toString());
        c.a(s1);
        com.mdotm.android.e.d.c(this, (new StringBuilder("mod = ")).append(c.d()).toString());
    }

    static ProgressBar e(a a1)
    {
        return a1.d;
    }

    private void e()
    {
        String s = c.d();
        com.mdotm.android.e.d.c(this, (new StringBuilder("first height = ")).append(c.i()).toString());
        String s1 = s.replace((new StringBuilder("height='")).append(c.i()).append("'").toString(), (new StringBuilder("height='")).append(getReducedHeight()).append("'").toString()).replaceAll("height='\\d+'", (new StringBuilder("height='")).append(getReducedHeight()).append("'").toString()).replace((new StringBuilder("height:")).append(c.i()).toString(), (new StringBuilder("height:")).append(getReducedHeight()).toString()).replaceAll("width='\\d+'", (new StringBuilder("width='")).append(g).append("'").toString()).replaceAll("width:\\d+", (new StringBuilder("width:")).append(g).toString());
        c.a(s1);
        com.mdotm.android.e.d.c(this, (new StringBuilder("mod = ")).append(c.d()).toString());
    }

    private void f()
    {
        String s = c.d();
        com.mdotm.android.e.d.c(this, (new StringBuilder("first height = ")).append(c.i()).toString());
        String s1 = s.replace((new StringBuilder("height='")).append(c.i()).append("'").toString(), (new StringBuilder("height='")).append(c.i()).append("'").toString()).replaceAll("height='\\d+'", (new StringBuilder("height='")).append(c.i()).append("'").toString()).replace("height:\\d+", (new StringBuilder("height:")).append(c.i()).toString()).replaceAll("width='\\d+'", (new StringBuilder("width='")).append(c.h()).append("'").toString()).replaceAll("width:\\d+", (new StringBuilder("width:")).append(c.h()).toString());
        c.a(s1);
        com.mdotm.android.e.d.c(this, (new StringBuilder("mod = ")).append(c.d()).toString());
    }

    private void getHeightAndWidth()
    {
        Display display = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
        if (android.os.Build.VERSION.SDK_INT < 13)
        {
            g = display.getWidth();
            h = display.getHeight();
            return;
        } else
        {
            Point point = new Point();
            display.getSize(point);
            g = point.x;
            h = point.y;
            return;
        }
    }

    private int getReducedHeight()
    {
        com.mdotm.android.e.d.c(this, (new StringBuilder("dev height = ")).append(h).toString());
        return h - c(25);
    }

    private void setAdSelectionInProgress(boolean flag)
    {
        e = flag;
    }

    // Unreferenced inner class com/mdotm/android/view/a$1$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final _cls1 a;

        public void run()
        {
            if (a.a)
            {
                com.mdotm.android.e.d.a(this, "timeout loading landing url");
                a.a(_cls1.a(a)).stopLoading();
                com.mdotm.android.view.a.b(_cls1.a(a));
                a.a = false;
            }
        }

            
            {
                a = _pcls1;
                super();
            }
    }

}
