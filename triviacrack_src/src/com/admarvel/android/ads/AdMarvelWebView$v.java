// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, f

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private String c;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelwebview = (AdMarvelWebView)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelwebview == null || admarvelinternalwebview == null) goto _L2; else goto _L1
_L1:
        if (c == null) goto _L2; else goto _L3
_L3:
        if (c.length() <= 0)
        {
            return;
        }
        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 != null) goto _L5; else goto _L4
_L4:
        f f2;
        f2 = new f(admarvelwebview.getContext(), false, c);
        f2.setTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        f f3 = f2;
_L6:
        try
        {
            f3.a(AdMarvelWebView.y(admarvelwebview), AdMarvelWebView.z(admarvelwebview), AdMarvelWebView.A(admarvelwebview), AdMarvelWebView.B(admarvelwebview));
            float f4 = admarvelwebview.getContext().getResources().getDisplayMetrics().density;
            if (AdMarvelWebView.C(admarvelwebview) > 0)
            {
                android.widget.tParams tparams = (android.widget.tParams)admarvelwebview.getLayoutParams();
                tparams.height = (int)(f4 * (float)AdMarvelWebView.C(admarvelwebview));
                admarvelwebview.setLayoutParams(tparams);
            }
            admarvelwebview.removeAllViews();
            admarvelwebview.addView(f3);
            admarvelwebview.addView(admarvelinternalwebview);
            admarvelinternalwebview.setBackgroundColor(0);
            admarvelinternalwebview.setBackgroundDrawable(null);
            admarvelinternalwebview.setLayerType(1, null);
            f3.a(c, 0);
            f3.a(new f.a(admarvelwebview, admarvelinternalwebview) {

                final AdMarvelWebView a;
                final AdMarvelInternalWebView b;
                final AdMarvelWebView.v c;

                public void a()
                {
                    if (AdMarvelWebView.D(a) != null && AdMarvelWebView.D(a).length() > 0)
                    {
                        b.setLayerType(2, null);
                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(a)).append("()").toString());
                        b.requestLayout();
                        b.invalidate();
                        AdMarvelWebView.d(a).postDelayed(new Runnable(this) {

                            final _cls1 a;

                            public void run()
                            {
                                a.b.setLayerType(1, null);
                            }

            
            {
                a = _pcls1;
                super();
            }
                        }, 500L);
                    }
                    AdMarvelWebView.h h = new AdMarvelWebView.h(a);
                    AdMarvelWebView.d(a).post(h);
                }

            
            {
                c = AdMarvelWebView.v.this;
                a = admarvelwebview;
                b = admarvelinternalwebview;
                super();
            }
            });
            f3.a(new android.media.MediaPlayer.OnPreparedListener(admarvelwebview, admarvelinternalwebview) {

                final AdMarvelWebView a;
                final AdMarvelInternalWebView b;
                final AdMarvelWebView.v c;

                public void onPrepared(MediaPlayer mediaplayer)
                {
                    if (AdMarvelWebView.E(a))
                    {
                        mediaplayer.setVolume(0.0F, 0.0F);
                        AdMarvelWebView.e(a, false);
                    }
                    if (AdMarvelWebView.F(a) != null && AdMarvelWebView.F(a).length() > 0)
                    {
                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.F(a)).append("()").toString());
                    }
                    if (AdMarvelWebView.G(a) != null && AdMarvelWebView.G(a).length() > 0)
                    {
                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.G(a)).append("()").toString());
                    }
                    if (AdMarvelWebView.H(a) == null)
                    {
                        AdMarvelWebView.a(a, new AdMarvelWebView.al(a, b));
                        AdMarvelWebView.d(a).postDelayed(AdMarvelWebView.H(a), 500L);
                    }
                }

            
            {
                c = AdMarvelWebView.v.this;
                a = admarvelwebview;
                b = admarvelinternalwebview;
                super();
            }
            });
            f3.a(new android.media.MediaPlayer.OnCompletionListener(admarvelwebview, admarvelinternalwebview) {

                final AdMarvelWebView a;
                final AdMarvelInternalWebView b;
                final AdMarvelWebView.v c;

                public void onCompletion(MediaPlayer mediaplayer)
                {
                    if (AdMarvelWebView.I(a) != null && AdMarvelWebView.I(a).length() > 0)
                    {
                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.I(a)).append("()").toString());
                    }
                }

            
            {
                c = AdMarvelWebView.v.this;
                a = admarvelwebview;
                b = admarvelinternalwebview;
                super();
            }
            });
            f3.a(new android.media.MediaPlayer.OnErrorListener(admarvelwebview, admarvelinternalwebview) {

                final AdMarvelWebView a;
                final AdMarvelInternalWebView b;
                final AdMarvelWebView.v c;

                public boolean onError(MediaPlayer mediaplayer, int i, int j)
                {
                    if (AdMarvelWebView.D(a) != null && AdMarvelWebView.D(a).length() > 0)
                    {
                        b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(a)).append("()").toString());
                    }
                    return false;
                }

            
            {
                c = AdMarvelWebView.v.this;
                a = admarvelwebview;
                b = admarvelinternalwebview;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        return;
_L5:
        f3 = f1;
        if (true) goto _L6; else goto _L2
_L2:
    }

    public bView(String s, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = s;
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
    }
}
