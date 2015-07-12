// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMLayout, AdViewOverlayActivity, MMAdImpl, MMAdImplController, 
//            MMLog, MMActivity, OverlaySettings, MMWebView, 
//            InlineVideoView, BridgeMMSpeechkit

class AdViewOverlayView extends MMLayout
{

    OverlaySettings a;
    WeakReference b;
    CloseTopDrawable c;
    private Button d;
    private boolean e;
    private ProgressBar f;

    AdViewOverlayView(AdViewOverlayActivity adviewoverlayactivity, OverlaySettings overlaysettings)
    {
        super(adviewoverlayactivity.c);
        b = new WeakReference(adviewoverlayactivity);
        h = new AdViewOverlayViewMMAdImpl(adviewoverlayactivity.c);
        setId(15062);
        h.f = "i";
        a = overlaysettings;
        boolean flag = adviewoverlayactivity.c instanceof Activity;
        NonConfigurationInstance nonconfigurationinstance = null;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (flag)
        {
            nonconfigurationinstance = (NonConfigurationInstance)adviewoverlayactivity.c.getLastNonConfigurationInstance();
            float f1;
            Integer integer;
            if (nonconfigurationinstance != null)
            {
                e = nonconfigurationinstance.a;
                h.k = nonconfigurationinstance.b;
                a = nonconfigurationinstance.c;
                if (h != null && h.k != null && h.k.b != null)
                {
                    addView(h.k.b);
                }
                MMLog.b("AdViewOverlayView", (new StringBuilder()).append("Restoring configurationinstance w/ controller= ").append(nonconfigurationinstance.b).toString());
            } else
            {
                MMLog.b("AdViewOverlayView", "Null configurationinstance ");
            }
        }
        f1 = adviewoverlayactivity.c.getResources().getDisplayMetrics().density;
        if (a.e != 0 && a.f != 0)
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams((int)(f1 * (float)a.f), (int)(f1 * (float)a.e));
        } else
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        }
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
        integer = Integer.valueOf((int)(0.0625F * f1 * (float)a.b));
        setPadding(integer.intValue(), integer.intValue(), integer.intValue(), integer.intValue());
        d = a(adviewoverlayactivity.c, f1);
        if (a.b() && !a.d())
        {
            h.n = a.n;
        }
        MMAdImplController.b(h);
        if (d != null)
        {
            addView(d);
        }
        if (!e && !a.b() && !a.c())
        {
            s();
        }
        if (a.i())
        {
            if (h != null && h.k != null && h.k.b != null)
            {
                h.k.b.setBackgroundColor(0);
            }
            setBackgroundColor(0);
        } else
        {
            if (h != null && h.k != null && h.k.b != null)
            {
                h.k.b.setBackgroundColor(-1);
            }
            setBackgroundColor(-1);
        }
        if (a.j() && h != null && h.k != null && h.k.b != null)
        {
            h.k.b.c();
        }
        if (nonconfigurationinstance == null)
        {
            t();
        }
        a(a.h());
    }

    private Button a(Context context, float f1)
    {
        Button button = new Button(context);
        button.setId(301);
        button.setContentDescription("mraidCloseButton");
        c = new CloseTopDrawable(true, f1);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final AdViewOverlayView a;

            public void onClick(View view)
            {
                MMLog.a("AdViewOverlayView", "Close button clicked.");
                a.c();
            }

            
            {
                a = AdViewOverlayView.this;
                super();
            }
        });
        android.widget.RelativeLayout.LayoutParams layoutparams = a(f1);
        button.setLayoutParams(layoutparams);
        button.post(new SetCloseButtonTouchDelegateRunnable(button, layoutparams.topMargin, layoutparams.leftMargin, layoutparams.bottomMargin, layoutparams.rightMargin));
        return button;
    }

    private android.widget.RelativeLayout.LayoutParams a(float f1)
    {
        int l = (int)(0.5F + 50F * f1);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(l, l);
        layoutparams.addRule(11);
        layoutparams.addRule(10);
        return layoutparams;
    }

    static void a(AdViewOverlayView adviewoverlayview)
    {
        adviewoverlayview.u();
    }

    static Button b(AdViewOverlayView adviewoverlayview)
    {
        return adviewoverlayview.d;
    }

    static ProgressBar c(AdViewOverlayView adviewoverlayview)
    {
        return adviewoverlayview.f;
    }

    static void d(AdViewOverlayView adviewoverlayview)
    {
        adviewoverlayview.s();
    }

    private void s()
    {
        AdViewOverlayActivity adviewoverlayactivity = (AdViewOverlayActivity)b.get();
        if (adviewoverlayactivity != null)
        {
            f = new ProgressBar(adviewoverlayactivity.c);
            f.setIndeterminate(true);
            f.setVisibility(0);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams.addRule(13);
            addView(f, layoutparams);
        }
    }

    private void t()
    {
        Object obj;
        if (a.g().equals("slideup"))
        {
            obj = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
            MMLog.a("AdViewOverlayView", "Translate up");
        } else
        {
            if (!a.g().equals("slidedown"))
            {
                continue;
            }
            obj = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1F, 1, 0.0F);
            MMLog.a("AdViewOverlayView", "Translate down");
        }
        do
        {
            ((Animation) (obj)).setDuration(a.f());
            startAnimation(((Animation) (obj)));
            do
            {
                return;
            } while (!a.g().equals("explode"));
            ScaleAnimation scaleanimation = new ScaleAnimation(1.1F, 0.9F, 0.1F, 0.9F, 1, 0.5F, 1, 0.5F);
            MMLog.a("AdViewOverlayView", "Explode");
            obj = scaleanimation;
        } while (true);
    }

    private void u()
    {
        if (!e && f != null)
        {
            e = true;
            f.setVisibility(8);
            removeView(f);
            f = null;
        }
    }

    Object a()
    {
        NonConfigurationInstance nonconfigurationinstance = new NonConfigurationInstance();
        if (h != null)
        {
            MMLog.b("AdViewOverlayView", (new StringBuilder()).append("Saving getNonConfigurationInstance for ").append(h).toString());
            if (h.k != null && h.k.b != null)
            {
                h.k.b.v();
            }
            nonconfigurationinstance.b = h.k;
        }
        nonconfigurationinstance.a = e;
        nonconfigurationinstance.c = a;
        return nonconfigurationinstance;
    }

    void a(String s1)
    {
        (new FetchWebViewContentTask(s1)).execute(new Void[0]);
    }

    void a(boolean flag)
    {
        a.a(flag);
        Button button = d;
        Object obj;
        if (flag)
        {
            obj = null;
        } else
        {
            obj = c;
        }
        button.setBackgroundDrawable(((Drawable) (obj)));
    }

    void b()
    {
        post(new Runnable() {

            final AdViewOverlayView a;

            public void run()
            {
                a.c();
            }

            
            {
                a = AdViewOverlayView.this;
                super();
            }
        });
    }

    void c()
    {
        MMLog.b("AdViewOverlayView", "Ad overlay closed");
        if ((Activity)getContext() == null)
        {
            return;
        } else
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setAnimationListener(new AnimationListener());
            alphaanimation.setFillEnabled(true);
            alphaanimation.setFillBefore(true);
            alphaanimation.setFillAfter(true);
            alphaanimation.setDuration(400L);
            startAnimation(alphaanimation);
            return;
        }
    }

    boolean d()
    {
        return h != null && h.n != 0L && MMAdImplController.c(h);
    }

    void e()
    {
        super.e();
        f();
    }

    void f()
    {
        if (d != null)
        {
            d.bringToFront();
        }
    }

    void g()
    {
        removeView(l);
        addView(l, m.getCustomLayoutParams());
        f();
    }

    void h()
    {
        removeView(l);
        addView(l, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        f();
    }

    void i()
    {
        if (m != null && l != null)
        {
            l.setLayoutParams(m.getCustomLayoutParams());
            f();
        }
    }

    void j()
    {
        removeAllViews();
        android.view.ViewParent viewparent = getParent();
        if (viewparent != null && (viewparent instanceof ViewGroup))
        {
            ((ViewGroup)viewparent).removeView(this);
        }
    }

    void k()
    {
        BridgeMMSpeechkit.a();
        if (h != null && h.k != null && h.k.b != null)
        {
            h.k.b.clearFocus();
            h.k.b.p();
            if (h.f == "i")
            {
                h.k.b.o();
            }
            h.k.b.onPauseWebView();
        }
    }

    private class AdViewOverlayViewMMAdImpl extends MMLayout.MMLayoutMMAdImpl
    {
        private class OverlayWebViewClientListener extends MMAdImpl.BasicWebViewClientListener
        {

            public void onPageFinished(String s1)
            {
                super.onPageFinished(s1);
                MMAdImpl mmadimpl = (MMAdImpl)a.get();
                if (mmadimpl != null)
                {
                    mmadimpl.a();
                }
            }

            OverlayWebViewClientListener(MMAdImpl mmadimpl)
            {
                super(mmadimpl);
            }
        }


        final AdViewOverlayView a;

        void a()
        {
            AdViewOverlayView.a(a);
        }

        boolean b()
        {
            return a.a.d() && !a.a.e();
        }

        MMWebViewClient c()
        {
            MMLog.b("AdViewOverlayView", (new StringBuilder()).append("Returning a client for user: OverlayWebViewClient, adimpl=").append(a.h).toString());
            if (a.h.n != 0L || a.a.d())
            {
                BannerExpandedWebViewClient bannerexpandedwebviewclient = new BannerExpandedWebViewClient(m, new OverlayRedirectionListenerImpl(this));
                l = bannerexpandedwebviewclient;
                return bannerexpandedwebviewclient;
            } else
            {
                InterstitialWebViewClient interstitialwebviewclient = new InterstitialWebViewClient(m, new OverlayRedirectionListenerImpl(this));
                l = interstitialwebviewclient;
                return interstitialwebviewclient;
            }
        }

        public AdViewOverlayViewMMAdImpl(Context context)
        {
            a = AdViewOverlayView.this;
            super(AdViewOverlayView.this, context);
            m = new OverlayWebViewClientListener(this);
        }

        private class OverlayRedirectionListenerImpl extends MMAdImpl.MMAdImplRedirectionListenerImpl
        {

            public boolean isExpandingToUrl()
            {
                MMAdImpl mmadimpl = (MMAdImpl)f.get();
                if (mmadimpl != null && (mmadimpl instanceof AdViewOverlayViewMMAdImpl))
                {
                    return mmadimpl.b();
                } else
                {
                    return false;
                }
            }

            public OverlayRedirectionListenerImpl(MMAdImpl mmadimpl)
            {
                super(mmadimpl);
            }
        }

    }


    private class NonConfigurationInstance
    {

        boolean a;
        MMAdImplController b;
        OverlaySettings c;

        private NonConfigurationInstance()
        {
        }

    }


    private class CloseTopDrawable extends CloseDrawable
    {
        private class CloseDrawable extends Drawable
        {

            protected boolean a;
            protected final Paint b = new Paint();

            public void draw(Canvas canvas)
            {
                Rect rect = copyBounds();
                int l = rect.right - rect.left;
                int i1 = rect.bottom - rect.top;
                float f1 = (float)l / 6F;
                b.setStrokeWidth(f1);
                char c1;
                if (a)
                {
                    c1 = '\377';
                } else
                {
                    c1 = 'P';
                }
                b.setARGB(255, c1, c1, c1);
                canvas.drawLine(f1 / 2.0F, f1 / 2.0F, (float)l - f1 / 2.0F, (float)i1 - f1 / 2.0F, b);
                canvas.drawLine((float)l - f1 / 2.0F, f1 / 2.0F, f1 / 2.0F, (float)i1 - f1 / 2.0F, b);
            }

            public int getOpacity()
            {
                return -3;
            }

            public void setAlpha(int l)
            {
            }

            public void setColorFilter(ColorFilter colorfilter)
            {
            }

            CloseDrawable(boolean flag)
            {
                a = true;
                a = flag;
                b.setAntiAlias(true);
                b.setStyle(android.graphics.Paint.Style.STROKE);
            }
        }


        final float c;
        final float d;

        public void draw(Canvas canvas)
        {
            Rect rect = copyBounds();
            float f1 = (float)(rect.right - rect.left) / 10F;
            float f2 = (float)rect.right - 20F * c;
            float f3 = (float)rect.top + 20F * c;
            b.setStrokeWidth(f1);
            b.setColor(0xff000000);
            b.setStyle(android.graphics.Paint.Style.STROKE);
            canvas.drawCircle(f2, f3, 12F * c, b);
            b.setColor(-1);
            b.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
            canvas.drawCircle(f2, f3, 10F * c, b);
            b.setColor(0xff000000);
            canvas.drawCircle(f2, f3, 7F * c, b);
            b.setColor(-1);
            b.setStrokeWidth(f1 / 2.0F);
            b.setStyle(android.graphics.Paint.Style.STROKE);
            canvas.drawLine(f2 - d, f3 - d, f2 + d, f3 + d, b);
            canvas.drawLine(f2 + d, f3 - d, f2 - d, f3 + d, b);
        }

        CloseTopDrawable(boolean flag, float f1)
        {
            super(flag);
            c = f1;
            d = 4F * f1;
            b.setColor(0xff000000);
        }
    }


    private class SetCloseButtonTouchDelegateRunnable
        implements Runnable
    {

        int a;
        int b;
        int c;
        int d;
        private final Button e;

        public void run()
        {
            Rect rect = new Rect();
            e.getHitRect(rect);
            rect.top = rect.top + a;
            rect.right = rect.right + d;
            rect.bottom = rect.bottom + c;
            rect.left = rect.left + b;
            TouchDelegate touchdelegate = new TouchDelegate(rect, e);
            if (android/view/View.isInstance(e.getParent()))
            {
                ((View)e.getParent()).setTouchDelegate(touchdelegate);
            }
        }

        SetCloseButtonTouchDelegateRunnable(Button button, int l, int i1, int j1, int k1)
        {
            e = button;
            a = l;
            b = i1;
            c = j1;
            d = k1;
        }
    }


    private class FetchWebViewContentTask extends AsyncTask
    {

        private String a;
        private boolean b;
        private WeakReference c;

        protected transient String a(Void avoid[])
        {
            b = true;
            if (TextUtils.isEmpty(a))
            {
                break MISSING_BLOCK_LABEL_106;
            }
            HttpResponse httpresponse = (new HttpGetRequest()).a(a);
            if (httpresponse == null)
            {
                break MISSING_BLOCK_LABEL_106;
            }
            StatusLine statusline = httpresponse.getStatusLine();
            if (httpresponse == null || statusline == null)
            {
                break MISSING_BLOCK_LABEL_106;
            }
            HttpEntity httpentity;
            if (statusline.getStatusCode() == 404)
            {
                break MISSING_BLOCK_LABEL_106;
            }
            httpentity = httpresponse.getEntity();
            if (httpentity == null)
            {
                break MISSING_BLOCK_LABEL_106;
            }
            String s1;
            s1 = HttpGetRequest.a(httpentity.getContent());
            b = false;
            return s1;
            Exception exception;
            exception;
            MMLog.a("AdViewOverlayView", "Unable to get weboverlay", exception);
            return null;
        }

        protected void a(String s1)
        {
            AdViewOverlayView adviewoverlayview = (AdViewOverlayView)c.get();
            if (adviewoverlayview != null)
            {
                if (b)
                {
                    AdViewOverlayActivity adviewoverlayactivity = (AdViewOverlayActivity)adviewoverlayview.b.get();
                    if (adviewoverlayactivity != null)
                    {
                        adviewoverlayactivity.finish();
                    } else
                    {
                        AdViewOverlayView.a(adviewoverlayview);
                    }
                }
                if (s1 != null && adviewoverlayview.h != null && adviewoverlayview.h.k != null)
                {
                    adviewoverlayview.h.k.a(s1, a);
                }
            }
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((String)obj);
        }

        protected void onPreExecute()
        {
            AdViewOverlayView adviewoverlayview = (AdViewOverlayView)c.get();
            if (adviewoverlayview != null && AdViewOverlayView.c(adviewoverlayview) == null)
            {
                AdViewOverlayView.d(adviewoverlayview);
            }
            super.onPreExecute();
        }

        public FetchWebViewContentTask(String s1)
        {
            a = s1;
            c = new WeakReference(AdViewOverlayView.this);
        }
    }


    private class AnimationListener
        implements android.view.animation.Animation.AnimationListener
    {

        private WeakReference a;

        public void onAnimationEnd(Animation animation)
        {
            AdViewOverlayView adviewoverlayview = (AdViewOverlayView)a.get();
            if (adviewoverlayview != null)
            {
                Activity activity = (Activity)adviewoverlayview.getContext();
                MMLog.b("AdViewOverlayView", "Finishing overlay this is in w/ anim finishOverLayWithAnim()");
                activity.finish();
            }
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            AdViewOverlayView adviewoverlayview = (AdViewOverlayView)a.get();
            if (adviewoverlayview != null && AdViewOverlayView.b(adviewoverlayview) != null)
            {
                AdViewOverlayView.b(adviewoverlayview).setVisibility(8);
            }
        }

        public AnimationListener()
        {
            a = new WeakReference(AdViewOverlayView.this);
        }
    }

}
