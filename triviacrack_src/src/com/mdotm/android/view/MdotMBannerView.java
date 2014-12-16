// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
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
import java.lang.ref.WeakReference;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

class MdotMBannerView extends RelativeLayout
{

    public static MdotMBannerView b = null;
    private static Drawable l;
    private static final Typeface p;
    public boolean a;
    Handler c;
    private boolean d;
    private String e;
    private c f;
    private ProgressBar g;
    private WeakReference h;
    private int i;
    private int j;
    private int k;
    private boolean m;
    private WebView n;
    private int o;

    public MdotMBannerView(Context context)
    {
        super(context);
        j = -1;
        k = 0xff000000;
        m = false;
        n = null;
    }

    public MdotMBannerView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public MdotMBannerView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        j = -1;
        k = 0xff000000;
        m = false;
        n = null;
    }

    private Bitmap a(String s, boolean flag)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        HttpResponse httpresponse;
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 5000);
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

    static Drawable a()
    {
        return l;
    }

    static WebView a(MdotMBannerView mdotmbannerview)
    {
        return mdotmbannerview.n;
    }

    private void a(Bitmap bitmap, b b1)
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageBitmap(bitmap);
        imageview.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        com.mdotm.android.e.d.c(this, "Creating ad with bannerView view");
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(b1.h(), b1.i());
        layoutparams.addRule(13);
        imageview.setLayoutParams(layoutparams);
        imageview.setId(1);
        StringBuilder stringbuilder = new StringBuilder("The banner view is:");
        boolean flag;
        if (imageview == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.mdotm.android.e.d.c(this, stringbuilder.append(flag).toString());
        addView(imageview);
        a = true;
    }

    private void a(b b1, Context context)
    {
        if (b1 == null) goto _L2; else goto _L1
_L1:
        o = b1.k();
        n = new WebView(context);
        n.setFocusable(true);
        n.getSettings().setJavaScriptEnabled(true);
        n.setWebViewClient(new WebViewClient() {

            boolean a;
            Runnable b;
            final MdotMBannerView c;

            static MdotMBannerView a(_cls1 _pcls1)
            {
                return _pcls1.c;
            }

            public void onPageFinished(WebView webview, String s)
            {
                super.onPageFinished(webview, s);
                a = false;
                com.mdotm.android.e.d.b(this, (new StringBuilder("Click page finished ")).append(s).toString());
                com.mdotm.android.view.MdotMBannerView.b(c);
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("started Loading url ")).append(s).toString());
                if (com.mdotm.android.view.MdotMBannerView.c(c))
                {
                    a = true;
                    c.c.removeCallbacks(b);
                    c.c.postDelayed(b, 15000L);
                }
                super.onPageStarted(webview, s, bitmap);
            }

            public void onReceivedError(WebView webview, int i1, String s, String s1)
            {
                super.onReceivedError(webview, i1, s, s1);
                a = false;
                if (com.mdotm.android.view.MdotMBannerView.c(c))
                {
                    com.mdotm.android.e.d.a(this, (new StringBuilder("Unable to load landing url : ")).append(s).toString());
                }
                com.mdotm.android.view.MdotMBannerView.b(c);
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("returned url ")).append(s).toString());
                if (s != null && s.startsWith("market://"))
                {
                    try
                    {
                        webview.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
                        com.mdotm.android.view.MdotMBannerView.d(c).d();
                    }
                    catch (Exception exception)
                    {
                        com.mdotm.android.e.d.a(this, "Google Play store app is not installed");
                        exception.printStackTrace();
                    }
                    com.mdotm.android.view.MdotMBannerView.b(c);
                    a = false;
                    return true;
                } else
                {
                    com.mdotm.android.e.d.b(this, (new StringBuilder("loading other url ")).append(s).toString());
                    return super.shouldOverrideUrlLoading(webview, s);
                }
            }

            
            {
                c = MdotMBannerView.this;
                super();
                b = new _cls1(this);
            }
        });
        e = b1.e();
        setFocusable(true);
        setClickable(true);
        h = null;
        if (!b1.j()) goto _L4; else goto _L3
_L3:
        h = new WeakReference(BitmapFactory.decodeFile(b1.d()));
_L12:
        com.mdotm.android.e.d.b(this, (new StringBuilder("Image is ")).append(b1.d()).toString());
        i = 8;
        if (h.get() == null) goto _L6; else goto _L5
_L5:
        android.widget.RelativeLayout.LayoutParams layoutparams;
        com.mdotm.android.e.d.c(this, "The icon is nou null");
        g = new ProgressBar(getContext());
        g.setIndeterminate(false);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(40, 40);
        g.setLayoutParams(layoutparams);
        g.setVisibility(4);
        g.setMinimumHeight(8);
        g.setMinimumWidth(8);
        g.setMax(100);
        g.setBackgroundDrawable(l);
        if (b1.b() != f.b) goto _L8; else goto _L7
_L7:
        a((Bitmap)h.get(), b1);
        if (g != null)
        {
            g.setId(2);
            layoutparams.addRule(13);
        }
_L10:
        if (g != null)
        {
            addView(g);
        }
        setVisibility(e(this));
        return;
_L4:
        if (android.os.Build.VERSION.SDK_INT > 9)
        {
            StrictMode.setThreadPolicy((new android.os.StrictMode.ThreadPolicy.Builder()).permitNetwork().build());
        }
        h = new WeakReference(a(b1.d(), false));
        if (android.os.Build.VERSION.SDK_INT > 9)
        {
            StrictMode.setThreadPolicy((new android.os.StrictMode.ThreadPolicy.Builder()).detectNetwork().build());
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (b1.b() != f.a)
        {
            break; /* Loop/switch isn't completed */
        }
        b((Bitmap)h.get(), b1);
        if (g != null)
        {
            g.setId(3);
            layoutparams.addRule(13);
        }
        if (true) goto _L10; else goto _L9
_L9:
        a = false;
        com.mdotm.android.e.d.a(this, (new StringBuilder("Woooo!! unable to display ad, We got unsupported ad type. : ")).append(b1.b()).toString());
        return;
_L6:
        com.mdotm.android.e.d.c(this, "The icon is null");
        a = false;
        return;
_L2:
        a = false;
        return;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private void a(boolean flag)
    {
        d = flag;
    }

    private void b(Bitmap bitmap, b b1)
    {
        setBackgroundColor(k);
        ImageView imageview = new ImageView(getContext());
        imageview.setImageBitmap(bitmap);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(bitmap.getWidth(), bitmap.getHeight());
        layoutparams.setMargins(i, i, 0, i);
        imageview.setLayoutParams(layoutparams);
        imageview.setId(1);
        addView(imageview);
        TextView textview = new TextView(getContext());
        textview.setText(b1.f());
        textview.setContentDescription(b1.f());
        textview.setTypeface(p);
        textview.setTextColor(j);
        textview.setTextSize(13F);
        textview.setId(2);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        if (bitmap != null)
        {
            layoutparams1.addRule(1, 2);
        }
        layoutparams1.setMargins(50, 4, 10, 4);
        layoutparams1.addRule(13);
        textview.setLayoutParams(layoutparams1);
        addView(textview);
        setGravity(15);
        a = true;
    }

    static void b(MdotMBannerView mdotmbannerview)
    {
        mdotmbannerview.d();
    }

    private boolean b()
    {
        return d;
    }

    private void c()
    {
        Log.d("Ad Clicked", "Ad Clicked");
        com.mdotm.android.e.d.b(this, (new StringBuilder("  Selected to clicked  is selection in progress ")).append(b()).toString());
        if (e != null)
        {
            if (!b())
            {
                a(true);
                String s = e;
                e();
                (new Thread(s) {

                    final MdotMBannerView a;
                    private final String b;

                    static MdotMBannerView a(_cls2 _pcls2)
                    {
                        return _pcls2.a;
                    }

                    public void run()
                    {
                        com.mdotm.android.e.d.b(this, (new StringBuilder("Destination url is ")).append(b).toString());
                        com.mdotm.android.view.MdotMBannerView.d(a).c();
                        com.mdotm.android.e.d.b(this, (new StringBuilder("Launch type is ")).append(com.mdotm.android.view.MdotMBannerView.f(a)).toString());
                        if (com.mdotm.android.view.MdotMBannerView.f(a) == 2)
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
                                com.mdotm.android.e.d.b(this, (new StringBuilder("Could not open browser on ad click to ")).append(exception).toString());
                            }
                            com.mdotm.android.view.MdotMBannerView.d(a).d();
                            com.mdotm.android.view.MdotMBannerView.b(a);
                            return;
                        } else
                        {
                            a.c.post(new Runnable(this, b) {

                                final _cls2 a;
                                private final String b;

                                public void run()
                                {
                                    MdotMBannerView.a(_cls2.a(a)).loadUrl(b);
                                }

            
            {
                a = _pcls2;
                b = s;
                super();
            }
                            });
                            return;
                        }
                    }

            
            {
                a = MdotMBannerView.this;
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

    static boolean c(MdotMBannerView mdotmbannerview)
    {
        return mdotmbannerview.b();
    }

    static c d(MdotMBannerView mdotmbannerview)
    {
        return mdotmbannerview.f;
    }

    private void d()
    {
        com.mdotm.android.e.d.b(this, "On ad network completed");
        setClickable(true);
        a(false);
        m = false;
        f();
    }

    static int e(MdotMBannerView mdotmbannerview)
    {
        return mdotmbannerview.RelativeLayout.getVisibility();
    }

    private void e()
    {
        post(new Thread() {

            final MdotMBannerView a;

            public void run()
            {
                if (MdotMBannerView.g(a) != null)
                {
                    MdotMBannerView.g(a).setVisibility(0);
                    MdotMBannerView.g(a).setBackgroundDrawable(MdotMBannerView.a());
                }
            }

            
            {
                a = MdotMBannerView.this;
                super();
            }
        });
    }

    static int f(MdotMBannerView mdotmbannerview)
    {
        return mdotmbannerview.o;
    }

    private void f()
    {
        post(new Thread() {

            final MdotMBannerView a;

            public void run()
            {
                if (MdotMBannerView.g(a) != null)
                {
                    MdotMBannerView.g(a).setVisibility(4);
                    a.setBackgroundDrawable(MdotMBannerView.a());
                }
            }

            
            {
                a = MdotMBannerView.this;
                super();
            }
        });
    }

    static ProgressBar g(MdotMBannerView mdotmbannerview)
    {
        return mdotmbannerview.g;
    }

    public void a(Context context, b b1, c c1)
    {
        c = new Handler();
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(b1.h(), b1.i());
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
        f = c1;
        setFocusable(true);
        setDescendantFocusability(0x40000);
        setClickable(true);
        a(false);
        try
        {
            a(b1, context);
            return;
        }
        catch (Exception exception)
        {
            com.mdotm.android.e.d.a(this, "Exception initializing banner adview");
        }
        a = false;
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        com.mdotm.android.e.d.b(this, "key event");
        int i1 = keyevent.getAction();
        if (!m && i1 == 1)
        {
            m = true;
            c();
        }
        return super.dispatchKeyEvent(keyevent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        int i1;
        float f1;
        float f2;
        int j1;
        int k1;
        int l1;
        int i2;
        com.mdotm.android.e.d.c(this, "touch");
        i1 = motionevent.getAction();
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        j1 = getLeft();
        k1 = getTop();
        l1 = getRight();
        i2 = getBottom();
        com.mdotm.android.e.d.b(this, "  Selected  ");
        if (f1 >= (float)j1 && f1 <= (float)l1 && f2 >= (float)k1 && f2 <= (float)i2) goto _L2; else goto _L1
_L1:
        com.mdotm.android.e.d.b(this, "Always outside of ad display area ");
_L4:
        return super.dispatchTouchEvent(motionevent);
_L2:
        if (i1 == 1)
        {
            if (!m)
            {
                m = true;
                setClickable(false);
                c();
            }
        } else
        if (i1 != 0);
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onAttachedToWindow()
    {
        com.mdotm.android.e.d.b(this, "on attached to window");
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow()
    {
        com.mdotm.android.e.d.b(this, "on detached from window");
        super.onDetachedFromWindow();
    }

    static 
    {
        p = Typeface.create(Typeface.SANS_SERIF, 1);
    }

    // Unreferenced inner class com/mdotm/android/view/MdotMBannerView$1$1

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
                MdotMBannerView.a(_cls1.a(a)).stopLoading();
                com.mdotm.android.view.MdotMBannerView.b(_cls1.a(a));
                a.a = false;
            }
        }

            
            {
                a = _pcls1;
                super();
            }
    }

}
