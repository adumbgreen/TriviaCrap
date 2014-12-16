// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import com.mopub.common.util.IntentUtils;

public class MoPubBrowser extends Activity
{

    public static final String DESTINATION_URL_KEY = "URL";
    private WebView a;
    private ImageButton b;
    private ImageButton c;
    private ImageButton d;
    private ImageButton e;

    public MoPubBrowser()
    {
    }

    private ImageButton a(Drawable drawable)
    {
        ImageButton imagebutton = new ImageButton(this);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2, 1.0F);
        layoutparams.gravity = 16;
        imagebutton.setLayoutParams(layoutparams);
        imagebutton.setImageDrawable(drawable);
        return imagebutton;
    }

    static ImageButton a(MoPubBrowser mopubbrowser)
    {
        return mopubbrowser.c;
    }

    private void a()
    {
        WebSettings websettings = a.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setSupportZoom(true);
        websettings.setBuiltInZoomControls(true);
        websettings.setUseWideViewPort(true);
        a.loadUrl(getIntent().getStringExtra("URL"));
        a.setWebViewClient(new WebViewClient() {

            final MoPubBrowser a;

            public void onPageFinished(WebView webview, String s)
            {
                super.onPageFinished(webview, s);
                Drawable drawable;
                Drawable drawable1;
                if (webview.canGoBack())
                {
                    drawable = Drawables.LEFT_ARROW.decodeImage(a);
                } else
                {
                    drawable = Drawables.UNLEFT_ARROW.decodeImage(a);
                }
                MoPubBrowser.b(a).setImageDrawable(drawable);
                if (webview.canGoForward())
                {
                    drawable1 = Drawables.RIGHT_ARROW.decodeImage(a);
                } else
                {
                    drawable1 = Drawables.UNRIGHT_ARROW.decodeImage(a);
                }
                MoPubBrowser.a(a).setImageDrawable(drawable1);
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                super.onPageStarted(webview, s, bitmap);
                MoPubBrowser.a(a).setImageDrawable(Drawables.UNRIGHT_ARROW.decodeImage(a));
            }

            public void onReceivedError(WebView webview, int i, String s, String s1)
            {
                Toast.makeText(a, (new StringBuilder()).append("MoPubBrowser error: ").append(s).toString(), 0).show();
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s != null)
                {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                    if (IntentUtils.isDeepLink(s) && IntentUtils.deviceCanHandleIntent(a, intent))
                    {
                        a.startActivity(intent);
                        a.finish();
                        return true;
                    }
                }
                return false;
            }

            
            {
                a = MoPubBrowser.this;
                super();
            }
        });
        a.setWebChromeClient(new WebChromeClient() {

            final MoPubBrowser a;

            public void onProgressChanged(WebView webview, int i)
            {
                a.setTitle("Loading...");
                a.setProgress(i * 100);
                if (i == 100)
                {
                    a.setTitle(webview.getUrl());
                }
            }

            
            {
                a = MoPubBrowser.this;
                super();
            }
        });
    }

    static ImageButton b(MoPubBrowser mopubbrowser)
    {
        return mopubbrowser.b;
    }

    private void b()
    {
        b.setBackgroundColor(0);
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final MoPubBrowser a;

            public void onClick(View view)
            {
                if (MoPubBrowser.c(a).canGoBack())
                {
                    MoPubBrowser.c(a).goBack();
                }
            }

            
            {
                a = MoPubBrowser.this;
                super();
            }
        });
        c.setBackgroundColor(0);
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final MoPubBrowser a;

            public void onClick(View view)
            {
                if (MoPubBrowser.c(a).canGoForward())
                {
                    MoPubBrowser.c(a).goForward();
                }
            }

            
            {
                a = MoPubBrowser.this;
                super();
            }
        });
        d.setBackgroundColor(0);
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final MoPubBrowser a;

            public void onClick(View view)
            {
                MoPubBrowser.c(a).reload();
            }

            
            {
                a = MoPubBrowser.this;
                super();
            }
        });
        e.setBackgroundColor(0);
        e.setOnClickListener(new android.view.View.OnClickListener() {

            final MoPubBrowser a;

            public void onClick(View view)
            {
                a.finish();
            }

            
            {
                a = MoPubBrowser.this;
                super();
            }
        });
    }

    static WebView c(MoPubBrowser mopubbrowser)
    {
        return mopubbrowser.a;
    }

    private void c()
    {
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    private View d()
    {
        LinearLayout linearlayout = new LinearLayout(this);
        linearlayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1));
        linearlayout.setOrientation(1);
        RelativeLayout relativelayout = new RelativeLayout(this);
        relativelayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        linearlayout.addView(relativelayout);
        LinearLayout linearlayout1 = new LinearLayout(this);
        linearlayout1.setId(1);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams.addRule(12);
        linearlayout1.setLayoutParams(layoutparams);
        linearlayout1.setBackgroundDrawable(Drawables.BACKGROUND.decodeImage(this));
        relativelayout.addView(linearlayout1);
        b = a(Drawables.LEFT_ARROW.decodeImage(this));
        c = a(Drawables.RIGHT_ARROW.decodeImage(this));
        d = a(Drawables.REFRESH.decodeImage(this));
        e = a(Drawables.CLOSE.decodeImage(this));
        linearlayout1.addView(b);
        linearlayout1.addView(c);
        linearlayout1.addView(d);
        linearlayout1.addView(e);
        a = new WebView(this);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams1.addRule(2, 1);
        a.setLayoutParams(layoutparams1);
        relativelayout.addView(a);
        return linearlayout;
    }

    public static void open(Context context, String s)
    {
        MoPubLog.d((new StringBuilder()).append("Opening url in MoPubBrowser: ").append(s).toString());
        Intent intent = new Intent(context, com/mopub/common/MoPubBrowser);
        intent.putExtra("URL", s);
        intent.addFlags(0x10000000);
        context.startActivity(intent);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setResult(-1);
        getWindow().requestFeature(2);
        getWindow().setFeatureInt(2, -1);
        setContentView(d());
        a();
        b();
        c();
    }

    protected void onPause()
    {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
    }

    protected void onResume()
    {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
    }
}
