// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.smartadserver.android.library.controller.mraid.e;
import com.smartadserver.android.library.controller.mraid.f;
import com.smartadserver.android.library.g.a;
import com.smartadserver.android.library.h.c;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASCloseButton

public class g extends RelativeLayout
{

    private static final String a = com/smartadserver/android/library/ui/g.getSimpleName();
    public static int c[] = {
        10, 11, 12, 9, 14, 15
    };
    private WebView b;
    private SASCloseButton d;
    private ProgressBar e;
    private RelativeLayout f;
    private boolean g;
    private boolean h;
    private ImageButton i;
    private LinearLayout j;

    public g(Context context)
    {
        super(context);
        g = false;
        h = false;
        b = new WebView(context) {

            final g a;

            public void clearView()
            {
                if (!com.smartadserver.android.library.ui.g.a(a))
                {
                    super.clearView();
                }
            }

            public void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4)
            {
                if (!com.smartadserver.android.library.ui.g.a(a))
                {
                    super.loadDataWithBaseURL(s, s1, s2, s3, s4);
                }
            }

            public void loadUrl(String s)
            {
                if (!com.smartadserver.android.library.ui.g.a(a))
                {
                    super.loadUrl(s);
                }
            }

            
            {
                a = g.this;
                super(context);
            }
        };
        WebSettings websettings = b.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setPluginState(android.webkit.WebSettings.PluginState.ON);
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            websettings.setMediaPlaybackRequiresUserGesture(false);
        }
        websettings.setDomStorageEnabled(true);
        if (android.os.Build.VERSION.SDK_INT < 19)
        {
            websettings.setSupportMultipleWindows(true);
        }
        b.setScrollBarStyle(0x2000000);
        b.setVerticalScrollBarEnabled(false);
        b.setHorizontalScrollBarEnabled(false);
        b.setWebChromeClient(new WebChromeClient() {

            final g a;

            public void onProgressChanged(WebView webview, int k)
            {
                if (g.b(a).getVisibility() == 0)
                {
                    g.b(a).setProgress(k);
                }
            }

            
            {
                a = g.this;
                super();
            }
        });
        b.setWebViewClient(new WebViewClient() {

            final g a;

            public void onPageFinished(WebView webview, String s)
            {
                super.onPageFinished(webview, s);
                if (a.a())
                {
                    g.b(a).setVisibility(4);
                }
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                super.onPageStarted(webview, s, bitmap);
                if (a.a())
                {
                    g.b(a).setVisibility(0);
                }
            }

            
            {
                a = g.this;
                super();
            }
        });
        b.setFocusable(true);
        b.setFocusableInTouchMode(true);
        addView(b, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        e();
        d = new SASCloseButton(getContext());
        d.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
        d.setVisibility(8);
        e = new ProgressBar(context, null, 0x1010287);
        e.setVisibility(4);
        f = new RelativeLayout(getContext());
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13, -1);
        f.addView(e, layoutparams);
        ((android.widget.RelativeLayout.LayoutParams)d.getLayoutParams()).addRule(13, -1);
        f.addView(d);
        addView(f, new android.widget.RelativeLayout.LayoutParams(-2, -2));
        super.setBackgroundColor(0);
    }

    public static void a(int ai[], android.widget.RelativeLayout.LayoutParams layoutparams)
    {
        for (int k = 0; k < c.length; k++)
        {
            layoutparams.addRule(c[k], ai[k]);
        }

    }

    static boolean a(g g1)
    {
        return g1.h;
    }

    public static int[] a(int k)
    {
        switch (k)
        {
        case 1: // '\001'
        default:
            return (new int[] {
                -1, -1, 0, 0, 0, 0
            });

        case 0: // '\0'
            return (new int[] {
                -1, 0, 0, -1, 0, 0
            });

        case 2: // '\002'
            return (new int[] {
                0, 0, -1, -1, 0, 0
            });

        case 3: // '\003'
            return (new int[] {
                0, -1, -1, 0, 0, 0
            });

        case 4: // '\004'
            return (new int[] {
                -1, 0, 0, 0, -1, 0
            });

        case 5: // '\005'
            return (new int[] {
                0, 0, -1, 0, -1, 0
            });

        case 6: // '\006'
            return (new int[] {
                0, 0, 0, 0, -1, -1
            });
        }
    }

    static ProgressBar b(g g1)
    {
        return g1.e;
    }

    static WebView c(g g1)
    {
        return g1.b;
    }

    private void e()
    {
        Context context = getContext();
        j = new LinearLayout(context);
        j.setOrientation(0);
        GradientDrawable gradientdrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM, new int[] {
            0xff616261, 0xff131313
        });
        gradientdrawable.setCornerRadius(0.0F);
        j.setBackgroundDrawable(gradientdrawable);
        ImageButton imagebutton = new ImageButton(context);
        imagebutton.setBackgroundColor(0);
        imagebutton.setImageBitmap(a.i);
        imagebutton.setOnClickListener(new android.view.View.OnClickListener() {

            final g a;

            public void onClick(View view)
            {
                com.smartadserver.android.library.ui.g.c(a).goBack();
            }

            
            {
                a = g.this;
                super();
            }
        });
        ImageButton imagebutton1 = new ImageButton(context);
        imagebutton1.setBackgroundColor(0);
        imagebutton1.setImageBitmap(a.j);
        imagebutton1.setOnClickListener(new android.view.View.OnClickListener() {

            final g a;

            public void onClick(View view)
            {
                com.smartadserver.android.library.ui.g.c(a).goForward();
            }

            
            {
                a = g.this;
                super();
            }
        });
        ImageButton imagebutton2 = new ImageButton(context);
        imagebutton2.setBackgroundColor(0);
        imagebutton2.setImageBitmap(a.k);
        imagebutton2.setOnClickListener(new android.view.View.OnClickListener() {

            final g a;

            public void onClick(View view)
            {
                com.smartadserver.android.library.ui.g.c(a).reload();
            }

            
            {
                a = g.this;
                super();
            }
        });
        i = new ImageButton(context);
        i.setBackgroundColor(0);
        i.setImageBitmap(a.l);
        j.addView(imagebutton);
        j.addView(imagebutton1);
        j.addView(imagebutton2);
        ImageView imageview = new ImageView(context);
        j.addView(imageview);
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)imageview.getLayoutParams();
        layoutparams.width = 0;
        layoutparams.height = -1;
        layoutparams.weight = 1.0F;
        j.addView(i);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams1.addRule(12, -1);
        j.setVisibility(8);
        addView(j, layoutparams1);
    }

    public void a(int k, int l)
    {
        if (k == -1 || l == -1)
        {
            d.a();
            return;
        } else
        {
            d.a(k, l);
            return;
        }
    }

    public void a(Object obj, String s)
    {
        b.addJavascriptInterface(obj, s);
    }

    public void a(String s)
    {
        b.loadUrl(s);
    }

    public void a(String s, String s1, String s2, String s3, String s4)
    {
        b.loadDataWithBaseURL(s, s1, s2, s3, s4);
    }

    public boolean a()
    {
        return g;
    }

    public void addView(View view, int k, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.addView(view, k, layoutparams);
        if (f != null)
        {
            bringChildToFront(f);
        }
    }

    public void b()
    {
        b.clearView();
    }

    public void c()
    {
        com.smartadserver.android.library.h.c.a(a, (new StringBuilder()).append("onDestroy called on webview: ").append(this).toString());
        if (!h)
        {
            h = true;
            post(new Runnable() {

                final g a;

                public void run()
                {
                    a.removeView(com.smartadserver.android.library.ui.g.c(a));
                    Object obj = new Object();
                    a.a(obj, com.smartadserver.android.library.controller.mraid.a.b);
                    a.a(obj, e.a);
                    a.a(obj, f.a);
                    com.smartadserver.android.library.ui.g.c(a).setOnTouchListener(null);
                    com.smartadserver.android.library.ui.g.c(a).destroy();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
    }

    public boolean d()
    {
        return j.getVisibility() != 8;
    }

    public int getCloseButtonVisibility()
    {
        return d.getVisibility();
    }

    public WebSettings getSettings()
    {
        return b.getSettings();
    }

    public void setBackgroundColor(int k)
    {
        b.setBackgroundColor(k);
    }

    public void setCloseButtonOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        d.setOnClickListener(onclicklistener);
        i.setOnClickListener(onclicklistener);
    }

    public void setCloseButtonPosition(int k)
    {
        a(a(k), (android.widget.RelativeLayout.LayoutParams)f.getLayoutParams());
        forceLayout();
    }

    public void setCloseButtonVisibility(int k)
    {
        d.setVisibility(k);
    }

    public void setInAppBrowserMode(boolean flag)
    {
        if (flag)
        {
            j.setVisibility(0);
            setCloseButtonVisibility(4);
            setUseProgressBar(false);
            return;
        } else
        {
            j.setVisibility(8);
            setCloseButtonVisibility(0);
            setUseProgressBar(true);
            return;
        }
    }

    public void setOnTouchListener(android.view.View.OnTouchListener ontouchlistener)
    {
        b.setOnTouchListener(ontouchlistener);
    }

    public void setUseProgressBar(boolean flag)
    {
        g = flag;
    }

    public void setWebChromeClient(WebChromeClient webchromeclient)
    {
        b.setWebChromeClient(webchromeclient);
    }

    public void setWebViewClient(WebViewClient webviewclient)
    {
        b.setWebViewClient(webviewclient);
    }

}
