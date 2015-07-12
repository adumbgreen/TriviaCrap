// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.PathShape;
import android.graphics.drawable.shapes.RectShape;
import android.net.Uri;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelActivity, ab, AdMarvelInterstitialAds, 
//            i, g

class w extends LinearLayout
{

    static int a = 0x186a1;
    final String b;
    private final WeakReference c;

    w(Activity activity, Context context, String s)
    {
        super(context);
        c = new WeakReference(activity);
        b = s;
        setId(a);
        setGravity(17);
        setOrientation(1);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams.addRule(12);
        setLayoutParams(layoutparams);
        android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-1, (int)TypedValue.applyDimension(1, 5F, getResources().getDisplayMetrics()));
        ShapeDrawable shapedrawable = new ShapeDrawable();
        shapedrawable.getPaint().setColor(Color.parseColor("#33B5E5"));
        ClipDrawable clipdrawable = new ClipDrawable(shapedrawable, 3, 1);
        ProgressBar progressbar = new ProgressBar(context, null, 0x1010078);
        progressbar.setLayoutParams(layoutparams1);
        progressbar.setTag((new StringBuilder()).append(b).append("PROGRESS_BAR").toString());
        progressbar.setBackgroundColor(0);
        progressbar.setProgressDrawable(clipdrawable);
        progressbar.setVisibility(8);
        float f = TypedValue.applyDimension(1, 34F, getResources().getDisplayMetrics());
        android.widget.LinearLayout.LayoutParams layoutparams2 = new android.widget.LinearLayout.LayoutParams(-2, a(36F));
        layoutparams2.weight = 25F;
        layoutparams2.gravity = 17;
        android.widget.RelativeLayout.LayoutParams layoutparams3 = new android.widget.RelativeLayout.LayoutParams((int)f, (int)f);
        layoutparams3.addRule(13);
        a a1 = new a(context);
        a1.setTag((new StringBuilder()).append(b).append("CLOSE_BUTTON").toString());
        a1.setLayoutParams(layoutparams3);
        RelativeLayout relativelayout = new RelativeLayout(context);
        relativelayout.setTag((new StringBuilder()).append(b).append("CLOSE_BUTTON_LAYOUT").toString());
        relativelayout.setLayoutParams(layoutparams2);
        relativelayout.addView(a1);
        a1.setOnClickListener(new android.view.View.OnClickListener() {

            final w a;

            public void onClick(View view)
            {
                Activity activity1 = (Activity)w.a(a).get();
                if (activity1 != null && (activity1 instanceof AdMarvelActivity))
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity1;
                    if (admarvelactivity.c())
                    {
                        AdMarvelInterstitialAds.getListener().b();
                    } else
                    {
                        admarvelactivity.finish();
                    }
                    if (AdMarvelInternalWebView.d(a.b) != null)
                    {
                        AdMarvelInternalWebView.d(a.b).a(a.b);
                    }
                }
            }

            
            {
                a = w.this;
                super();
            }
        });
        a1.setBackgroundDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("done", context));
        a a2 = new a(context);
        a2.setTag((new StringBuilder()).append(b).append("BACK_BUTTON").toString());
        a2.setOnClickListener(new android.view.View.OnClickListener() {

            final w a;

            public void onClick(View view)
            {
                w.b(a);
            }

            
            {
                a = w.this;
                super();
            }
        });
        a2.setLayoutParams(layoutparams3);
        a2.setEnabled(false);
        RelativeLayout relativelayout1 = new RelativeLayout(context);
        relativelayout1.setTag((new StringBuilder()).append(b).append("BACK_BUTTON_LAYOUT").toString());
        relativelayout1.setLayoutParams(layoutparams2);
        relativelayout1.addView(a2);
        a a3 = new a(context);
        a3.setTag((new StringBuilder()).append(b).append("FORWARD_BUTTON").toString());
        a3.setLayoutParams(layoutparams3);
        a3.setEnabled(false);
        RelativeLayout relativelayout2 = new RelativeLayout(context);
        a3.setOnClickListener(new android.view.View.OnClickListener() {

            final w a;

            public void onClick(View view)
            {
                w.c(a);
            }

            
            {
                a = w.this;
                super();
            }
        });
        relativelayout2.setTag((new StringBuilder()).append(b).append("FORWARD_BUTTON_LAYOUT").toString());
        relativelayout2.setLayoutParams(layoutparams2);
        relativelayout2.addView(a3);
        a a4 = new a(context);
        a4.setTag((new StringBuilder()).append(b).append("RELOAD_BUTTON").toString());
        a4.setOnClickListener(new android.view.View.OnClickListener() {

            final w a;

            public void onClick(View view)
            {
                w.d(a);
            }

            
            {
                a = w.this;
                super();
            }
        });
        a4.setLayoutParams(layoutparams3);
        Path path = new Path();
        path.arcTo(new RectF(15F, 40F, 85F, 75F), 0.0F, 270F, false);
        path.rLineTo(0.0F, 10F);
        path.rLineTo(40F, -15F);
        path.rLineTo(-40F, -15F);
        path.rLineTo(0.0F, 10F);
        path.arcTo(new RectF(5F, 30F, 95F, 85F), 270F, -270F, false);
        path.close();
        ShapeDrawable shapedrawable1 = new ShapeDrawable(new PathShape(path, 100F, 100F));
        shapedrawable1.getPaint().setColor(-1);
        shapedrawable1.getPaint().setStyle(android.graphics.Paint.Style.FILL);
        shapedrawable1.getPaint().setAntiAlias(true);
        a4.setBackgroundDrawable(shapedrawable1);
        RelativeLayout relativelayout3 = new RelativeLayout(context);
        relativelayout3.setTag((new StringBuilder()).append(b).append("RELOAD_BUTTON_LAYOUT").toString());
        relativelayout3.setLayoutParams(layoutparams2);
        relativelayout3.addView(a4);
        a a5 = new a(context);
        a5.setTag((new StringBuilder()).append(b).append("BROWSER_BUTTON").toString());
        a5.setOnClickListener(new android.view.View.OnClickListener() {

            final w a;

            public void onClick(View view)
            {
                w.e(a);
            }

            
            {
                a = w.this;
                super();
            }
        });
        a5.setLayoutParams(layoutparams3);
        a5.setBackgroundDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("open_url", getContext()));
        RelativeLayout relativelayout4 = new RelativeLayout(context);
        relativelayout4.setTag((new StringBuilder()).append(b).append("BROWSER_BUTTON_LAYOUT").toString());
        relativelayout4.setLayoutParams(layoutparams2);
        relativelayout4.addView(a5);
        float f1 = TypedValue.applyDimension(1, 40F, getResources().getDisplayMetrics());
        ShapeDrawable shapedrawable2 = new ShapeDrawable(new RectShape());
        shapedrawable2.getPaint().setColor(Color.parseColor("#FF1D1C1D"));
        android.widget.LinearLayout.LayoutParams layoutparams4 = new android.widget.LinearLayout.LayoutParams(-1, (int)f1);
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setGravity(17);
        linearlayout.setTag((new StringBuilder()).append(b).append("BUTTON_BAR_LAYOUT").toString());
        linearlayout.setLayoutParams(layoutparams4);
        linearlayout.setOrientation(0);
        linearlayout.setWeightSum(100F);
        linearlayout.setBackgroundDrawable(shapedrawable2);
        linearlayout.addView(relativelayout);
        linearlayout.addView(relativelayout1);
        linearlayout.addView(relativelayout2);
        linearlayout.addView(relativelayout4);
        addView(progressbar);
        addView(linearlayout);
    }

    private int a(float f)
    {
        return (int)TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    static WeakReference a(w w1)
    {
        return w1.c;
    }

    private void b()
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)((RelativeLayout)getParent()).findViewWithTag((new StringBuilder()).append(b).append("WEBVIEW").toString());
        if (admarvelinternalwebview.canGoBack())
        {
            admarvelinternalwebview.goBack();
            a();
        }
    }

    static void b(w w1)
    {
        w1.b();
    }

    private void c()
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)((RelativeLayout)getParent()).findViewWithTag((new StringBuilder()).append(b).append("WEBVIEW").toString());
        if (admarvelinternalwebview.canGoForward())
        {
            admarvelinternalwebview.goForward();
            a();
        }
    }

    static void c(w w1)
    {
        w1.c();
    }

    private void d()
    {
        ((AdMarvelInternalWebView)((RelativeLayout)getParent()).findViewWithTag((new StringBuilder()).append(b).append("WEBVIEW").toString())).reload();
        a();
    }

    static void d(w w1)
    {
        w1.d();
    }

    private void e()
    {
        AdMarvelActivity admarvelactivity;
label0:
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(((AdMarvelInternalWebView)((RelativeLayout)getParent()).findViewWithTag((new StringBuilder()).append(b).append("WEBVIEW").toString())).getUrl()));
            intent.addFlags(0x10000000);
            Activity activity = (Activity)c.get();
            if (activity != null && (activity instanceof AdMarvelActivity))
            {
                admarvelactivity = (AdMarvelActivity)activity;
                if (ab.a(getContext(), intent))
                {
                    admarvelactivity.startActivity(intent);
                }
                if (admarvelactivity.c())
                {
                    AdMarvelInterstitialAds.getListener().b();
                    admarvelactivity.b();
                }
                if (admarvelactivity.a() <= 3)
                {
                    break label0;
                }
                admarvelactivity.finish();
            }
            return;
        }
        admarvelactivity.finish();
    }

    static void e(w w1)
    {
        w1.e();
    }

    void a()
    {
        Path path = new Path();
        path.moveTo(0.0F, 50F);
        path.rLineTo(80F, 30F);
        path.rLineTo(0.0F, -60F);
        path.rLineTo(-80F, 30F);
        path.close();
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)((RelativeLayout)getParent()).findViewWithTag((new StringBuilder()).append(b).append("WEBVIEW").toString());
        a a1 = (a)findViewWithTag((new StringBuilder()).append(b).append("BACK_BUTTON_LAYOUT").toString()).findViewWithTag((new StringBuilder()).append(b).append("BACK_BUTTON").toString());
        a a2 = (a)findViewWithTag((new StringBuilder()).append(b).append("FORWARD_BUTTON_LAYOUT").toString()).findViewWithTag((new StringBuilder()).append(b).append("FORWARD_BUTTON").toString());
        a a3 = (a)findViewWithTag((new StringBuilder()).append(b).append("BROWSER_BUTTON_LAYOUT").toString()).findViewWithTag((new StringBuilder()).append(b).append("BROWSER_BUTTON").toString());
        android.graphics.drawable.BitmapDrawable bitmapdrawable;
        android.graphics.drawable.BitmapDrawable bitmapdrawable1;
        String s;
        if (admarvelinternalwebview.canGoBack())
        {
            a1.setEnabled(true);
            bitmapdrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("backward", getContext());
        } else
        {
            a1.setEnabled(false);
            bitmapdrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("backward_disable", getContext());
        }
        a1.setBackgroundDrawable(bitmapdrawable);
        if (admarvelinternalwebview.canGoForward())
        {
            a2.setEnabled(true);
            bitmapdrawable1 = AdMarvelBitmapDrawableUtils.getBitMapDrawable("resume", getContext());
        } else
        {
            a2.setEnabled(false);
            bitmapdrawable1 = AdMarvelBitmapDrawableUtils.getBitMapDrawable("resume_disable", getContext());
        }
        a2.setBackgroundDrawable(bitmapdrawable1);
        a3.setBackgroundDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("open_url", getContext()));
        s = admarvelinternalwebview.getUrl();
        if (s != null && s.contains("http://"))
        {
            a3.setEnabled(true);
            return;
        } else
        {
            a3.setEnabled(false);
            return;
        }
    }

    public void setVisibility(int j)
    {
        super.setVisibility(j);
        if (j == 0)
        {
            a();
        }
    }


    private class a extends Button
    {

        final w a;

        public void setBackgroundDrawable(Drawable drawable)
        {
            class a extends LayerDrawable
            {

                protected int a;
                protected ColorFilter b;
                final a c;

                public boolean isStateful()
                {
                    return true;
                }

                protected boolean onStateChange(int ai[])
                {
                    boolean flag = false;
                    int j = ai.length;
                    int k = 0;
                    boolean flag1 = false;
                    while (k < j) 
                    {
                        int l = ai[k];
                        if (l == 0x101009e)
                        {
                            flag1 = true;
                        } else
                        if (l == 0x10100a7)
                        {
                            flag = true;
                        }
                        k++;
                    }
                    if (flag1 && flag)
                    {
                        setColorFilter(b);
                    } else
                    if (!flag1)
                    {
                        setColorFilter(null);
                        setAlpha(a);
                    } else
                    {
                        setColorFilter(null);
                    }
                    invalidateSelf();
                    return super.onStateChange(ai);
                }

                public a(Drawable drawable)
                {
                    c = a.this;
                    super(new Drawable[] {
                        drawable
                    });
                    a = 100;
                    b = new LightingColorFilter(0x3980c2, 1);
                }
            }

            super.setBackgroundDrawable(new a(drawable));
        }

        public a(Context context)
        {
            a = w.this;
            super(context);
        }
    }

}
