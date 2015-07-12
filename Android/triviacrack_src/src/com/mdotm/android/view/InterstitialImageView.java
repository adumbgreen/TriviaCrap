// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mdotm.android.c.c;
import com.mdotm.android.d.b;
import com.mdotm.android.e.d;
import com.mdotm.android.e.f;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

class InterstitialImageView extends RelativeLayout
{

    public boolean a;
    Handler b;
    Bitmap c;
    private boolean d;
    private String e;
    private int f;
    private c g;
    private ProgressBar h;
    private int i;
    private Drawable j;
    private Drawable k;
    private WebView l;
    private boolean m;

    public InterstitialImageView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public InterstitialImageView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        i = 0xff000000;
        l = null;
        m = false;
    }

    public InterstitialImageView(Context context, b b1, c c1)
    {
        super(context);
        i = 0xff000000;
        l = null;
        m = false;
        b = new Handler();
        f = b1.k();
        l = new WebView(context);
        l.getSettings().setJavaScriptEnabled(true);
        l.setWebViewClient(new WebViewClient() {

            boolean a;
            Runnable b;
            final InterstitialImageView c;

            static InterstitialImageView a(_cls1 _pcls1)
            {
                return _pcls1.c;
            }

            public void onPageFinished(WebView webview, String s)
            {
                super.onPageFinished(webview, s);
                a = false;
                com.mdotm.android.e.d.b(this, (new StringBuilder("Click page finished ")).append(s).toString());
                com.mdotm.android.view.InterstitialImageView.b(c);
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("started Loading url ")).append(s).toString());
                if (com.mdotm.android.view.InterstitialImageView.c(c))
                {
                    a = true;
                    c.b.removeCallbacks(b);
                    c.b.postDelayed(b, 15000L);
                }
                super.onPageStarted(webview, s, bitmap);
            }

            public void onReceivedError(WebView webview, int i1, String s, String s1)
            {
                super.onReceivedError(webview, i1, s, s1);
                a = false;
                if (com.mdotm.android.view.InterstitialImageView.c(c))
                {
                    com.mdotm.android.e.d.a(this, (new StringBuilder("Unable to load landing url : ")).append(s).toString());
                } else
                {
                    com.mdotm.android.e.d.a(this, (new StringBuilder("Unable to report impression : ")).append(s).toString());
                }
                com.mdotm.android.view.InterstitialImageView.b(c);
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("returned url ")).append(s).toString());
                if (s != null && s.startsWith("market://"))
                {
                    try
                    {
                        webview.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
                        com.mdotm.android.view.InterstitialImageView.d(c).d();
                    }
                    catch (Exception exception1)
                    {
                        com.mdotm.android.e.d.a(this, "Google Play store app is not installed");
                        exception1.printStackTrace();
                    }
                    com.mdotm.android.view.InterstitialImageView.b(c);
                    a = false;
                    return true;
                } else
                {
                    com.mdotm.android.e.d.b(this, (new StringBuilder("loading other url ")).append(s).toString());
                    return super.shouldOverrideUrlLoading(webview, s);
                }
            }

            
            {
                c = InterstitialImageView.this;
                super();
                b = new _cls1(this);
            }
        });
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
        g = c1;
        setFocusable(true);
        setClickable(true);
        setOnClickListener(new android.view.View.OnClickListener() {

            final InterstitialImageView a;

            public void onClick(View view)
            {
                if (!InterstitialImageView.e(a))
                {
                    InterstitialImageView.a(a, true);
                    a.setClickable(false);
                    InterstitialImageView.a(a, a.getContext());
                }
            }

            
            {
                a = InterstitialImageView.this;
                super();
            }
        });
        b(false);
        try
        {
            a(b1, context);
            return;
        }
        catch (Exception exception)
        {
            com.mdotm.android.e.d.a(this, "Exception initializing interstitial adview");
        }
        a = false;
    }

    private int a(int i1)
    {
        return (int)(0.5F + getResources().getDisplayMetrics().density * (float)i1);
    }

    static Bitmap a(InterstitialImageView interstitialimageview, String s, boolean flag)
    {
        return interstitialimageview.a(s, flag);
    }

    private Bitmap a(String s, boolean flag)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        HttpResponse httpresponse;
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 10000);
        httpresponse = (new DefaultHttpClient(basichttpparams)).execute(new HttpGet(s));
        if (httpresponse.getStatusLine().getStatusCode() != 200) goto _L4; else goto _L3
_L3:
        InputStream inputstream1 = httpresponse.getEntity().getContent();
        InputStream inputstream = inputstream1;
        Bitmap bitmap1 = BitmapFactory.decodeStream(inputstream);
        Bitmap bitmap = bitmap1;
_L11:
        Exception exception;
        Exception exception1;
        Exception exception2;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception2)
            {
                return bitmap;
            }
        }
_L6:
        return bitmap;
        exception2;
        inputstream = null;
_L9:
        exception2.printStackTrace();
        com.mdotm.android.e.d.a(this, (new StringBuilder("Problem while fetchImage()  :  ")).append(exception2).toString());
        bitmap = null;
        if (inputstream == null) goto _L6; else goto _L5
_L5:
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception1)
        {
            return null;
        }
        return null;
        exception;
        inputstream = null;
        exception1 = exception;
_L8:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception1;
_L2:
        com.mdotm.android.e.d.a(this, "Image url is null");
        return null;
        exception1;
        if (true) goto _L8; else goto _L7
_L7:
        exception2;
          goto _L9
_L4:
        bitmap = null;
        inputstream = null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    private static Drawable a(int i1, int j1)
    {
        com.mdotm.android.e.d.b("", "populate backgnd called");
        Rect rect = new Rect(0, 0, 1, 1);
        com.mdotm.android.e.d.b("", (new StringBuilder("rect width and height ")).append(rect.width()).append(" ").append(rect.height()).toString());
        Bitmap bitmap = Bitmap.createBitmap(rect.width(), rect.height(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setColor(i1);
        paint.setAntiAlias(true);
        canvas.drawRect(rect, paint);
        return new BitmapDrawable(bitmap);
    }

    static WebView a(InterstitialImageView interstitialimageview)
    {
        return interstitialimageview.l;
    }

    private void a(Context context)
    {
        com.mdotm.android.e.d.b(this, "  Selected to clicked  ");
        if (e != null)
        {
            if (!a())
            {
                String s = e;
                b(true);
                c();
                (new Thread(s) {

                    final InterstitialImageView a;
                    private final String b;

                    static InterstitialImageView a(_cls4 _pcls4)
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
                        com.mdotm.android.e.d.b(this, (new StringBuilder("Launch type is ")).append(InterstitialImageView.g(a)).toString());
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
                                com.mdotm.android.e.d.b(this, (new StringBuilder("Could not open browser on ad click to ")).append(exception).toString());
                            }
                            com.mdotm.android.view.InterstitialImageView.d(a).d();
                            com.mdotm.android.view.InterstitialImageView.b(a);
                            return;
                        } else
                        {
                            a.b.post(new Runnable(this, b) {

                                final _cls4 a;
                                private final String b;

                                public void run()
                                {
                                    InterstitialImageView.a(_cls4.a(a)).loadUrl(b);
                                }

            
            {
                a = _pcls4;
                b = s;
                super();
            }
                            });
                            return;
                        }
                    }

            
            {
                a = InterstitialImageView.this;
                b = s;
                super();
            }
                }).start();
                return;
            } else
            {
                com.mdotm.android.e.d.b(this, "ad selection under progress");
                return;
            }
        } else
        {
            com.mdotm.android.e.d.b(this, "selected ad is null");
            return;
        }
    }

    private void a(Bitmap bitmap, b b1)
    {
        if (bitmap != null)
        {
            ImageView imageview = new ImageView(getContext());
            imageview.setImageBitmap(bitmap);
            imageview.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams.addRule(13);
            imageview.setLayoutParams(layoutparams);
            imageview.setId(1);
            addView(imageview);
            a = true;
            return;
        } else
        {
            TextView textview = new TextView(getContext());
            textview.setText("Oops! error while downloading Image. Click here to view detail.");
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams1.addRule(13);
            textview.setLayoutParams(layoutparams1);
            textview.setPadding(50, 50, 50, 50);
            textview.setId(1);
            textview.setTextColor(0xff000000);
            textview.setBackgroundColor(0xffcccccc);
            addView(textview);
            a = true;
            return;
        }
    }

    private void a(b b1, Context context)
    {
        if (b1 != null)
        {
            h = new ProgressBar(getContext());
            h.setIndeterminate(false);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(a(25), a(25));
            h.setLayoutParams(layoutparams);
            h.setVisibility(4);
            h.setMinimumHeight(30);
            h.setMinimumWidth(30);
            h.setMax(100);
            if (h != null)
            {
                h.setId(2);
                layoutparams.addRule(13);
            }
            e = b1.e();
            setFocusable(true);
            setClickable(true);
            if (b1.j())
            {
                c = BitmapFactory.decodeFile(b1.d());
            } else
            {
                c = a(b1.d(), false);
            }
            com.mdotm.android.e.d.b(this, (new StringBuilder("Image is ")).append(b1.d()).toString());
            if (c != null)
            {
                a(b1, c);
            } else
            {
                com.mdotm.android.e.d.a(this, "Unable to create bitmap from cached file. Trying to download from remote");
                a = true;
                (new Thread(b1) {

                    final InterstitialImageView a;
                    private final b b;

                    static InterstitialImageView a(_cls3 _pcls3)
                    {
                        return _pcls3.a;
                    }

                    public void run()
                    {
                        a.c = InterstitialImageView.a(a, b.m(), false);
                        a.b.post(new Runnable(this, b) {

                            final _cls3 a;
                            private final b b;

                            public void run()
                            {
                                _cls3.a(a).a(b, _cls3.a(a).c);
                            }

            
            {
                a = _pcls3;
                b = b1;
                super();
            }
                        });
                    }

            
            {
                a = InterstitialImageView.this;
                b = b1;
                super();
            }
                }).start();
                if (h != null)
                {
                    addView(h);
                }
                c();
            }
            a(true);
            setVisibility(f(this));
            return;
        } else
        {
            a = false;
            return;
        }
    }

    static void a(InterstitialImageView interstitialimageview, Context context)
    {
        interstitialimageview.a(context);
    }

    static void a(InterstitialImageView interstitialimageview, boolean flag)
    {
        interstitialimageview.m = flag;
    }

    private void a(boolean flag)
    {
        com.mdotm.android.e.d.c(this, (new StringBuilder(" drawBackgroundView   :: ")).append(flag).toString());
        if (j == null)
        {
            j = a(0xffee7f27, -19456);
        }
        if (k == null)
        {
            k = a(0xff000000, i);
        }
        if (flag)
        {
            setBackgroundDrawable(k);
            return;
        } else
        {
            setBackgroundDrawable(j);
            return;
        }
    }

    private boolean a()
    {
        return d;
    }

    private void b()
    {
        com.mdotm.android.e.d.b(this, "On ad network completed");
        setClickable(true);
        b(false);
        m = false;
        d();
    }

    static void b(InterstitialImageView interstitialimageview)
    {
        interstitialimageview.b();
    }

    private void b(boolean flag)
    {
        d = flag;
    }

    private void c()
    {
        post(new Thread() {

            final InterstitialImageView a;

            public void run()
            {
                if (InterstitialImageView.h(a) != null)
                {
                    InterstitialImageView.h(a).setVisibility(0);
                }
            }

            
            {
                a = InterstitialImageView.this;
                super();
            }
        });
    }

    static boolean c(InterstitialImageView interstitialimageview)
    {
        return interstitialimageview.a();
    }

    static c d(InterstitialImageView interstitialimageview)
    {
        return interstitialimageview.g;
    }

    private void d()
    {
        post(new Thread() {

            final InterstitialImageView a;

            public void run()
            {
                if (InterstitialImageView.h(a) != null)
                {
                    InterstitialImageView.h(a).setVisibility(4);
                }
            }

            
            {
                a = InterstitialImageView.this;
                super();
            }
        });
    }

    static boolean e(InterstitialImageView interstitialimageview)
    {
        return interstitialimageview.m;
    }

    static int f(InterstitialImageView interstitialimageview)
    {
        return interstitialimageview.RelativeLayout.getVisibility();
    }

    static int g(InterstitialImageView interstitialimageview)
    {
        return interstitialimageview.f;
    }

    static ProgressBar h(InterstitialImageView interstitialimageview)
    {
        return interstitialimageview.h;
    }

    public void a(b b1, Bitmap bitmap)
    {
        if (b1.b() == f.b)
        {
            a(bitmap, b1);
            if (h != null)
            {
                removeView(h);
                addView(h);
                d();
            }
            return;
        } else
        {
            a = false;
            com.mdotm.android.e.d.a(this, (new StringBuilder("Woooo!! unable to display ad, We got unsupported ad type for interstitial. AdType : ")).append(b1.b()).toString());
            return;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        int i1 = keyevent.getAction();
        if (!m && i1 == 1)
        {
            m = true;
            a(getContext());
        }
        return super.dispatchKeyEvent(keyevent);
    }

    // Unreferenced inner class com/mdotm/android/view/InterstitialImageView$1$1

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
                InterstitialImageView.a(_cls1.a(a)).stopLoading();
                com.mdotm.android.view.InterstitialImageView.b(_cls1.a(a));
                a.a = false;
            }
        }

            
            {
                a = _pcls1;
                super();
            }
    }

}
