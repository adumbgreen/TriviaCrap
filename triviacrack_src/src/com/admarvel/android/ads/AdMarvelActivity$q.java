// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.graphics.Paint;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView, p, ac

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private String c;

    public void run()
    {
        AdMarvelActivity admarvelactivity;
        AdMarvelInternalWebView admarvelinternalwebview;
        RelativeLayout relativelayout;
        p p1;
        p p2;
        int i;
        int j;
        int k;
        try
        {
            admarvelactivity = (AdMarvelActivity)a.get();
            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (admarvelactivity == null || admarvelinternalwebview == null) goto _L2; else goto _L1
_L1:
        if (c == null) goto _L2; else goto _L3
_L3:
        if (c.length() <= 0)
        {
            return;
        }
        admarvelactivity.c = true;
        relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
        p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (p1 != null) goto _L5; else goto _L4
_L4:
        p2 = new p(admarvelactivity);
        p2.setTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (!admarvelactivity.d) goto _L7; else goto _L6
_L6:
        android.widget.utParams utparams = new android.widget.utParams(-1, -1);
        utparams.addRule(13);
        p2.setLayoutParams(utparams);
        i = relativelayout.getChildCount();
        j = 0;
_L13:
        if (j >= i) goto _L9; else goto _L8
_L8:
        if (relativelayout.getChildAt(j) != admarvelinternalwebview) goto _L10; else goto _L9
_L9:
        relativelayout.addView(p2, j);
        relativelayout.removeView(admarvelinternalwebview);
        admarvelinternalwebview.setBackgroundColor(0);
        admarvelinternalwebview.setBackgroundDrawable(null);
        k = ac.a();
        if (k >= 11)
        {
            try
            {
                Class aclass[] = new Class[2];
                aclass[0] = Integer.TYPE;
                aclass[1] = android/graphics/Paint;
                Method method = android/view/View.getMethod("setLayerType", aclass);
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(1);
                aobj[1] = null;
                method.invoke(admarvelinternalwebview, aobj);
            }
            catch (Exception exception1) { }
        }
        relativelayout.addView(admarvelinternalwebview);
_L11:
        p2.a(Uri.parse(c));
        p2.setVisibility(0);
        p2.a(new android.media.MediaPlayer.OnPreparedListener(admarvelactivity, admarvelinternalwebview) {

            final AdMarvelActivity a;
            final AdMarvelInternalWebView b;
            final AdMarvelActivity.q c;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                if (a.d)
                {
                    if (AdMarvelActivity.v(a) != null && AdMarvelActivity.v(a).length() > 0)
                    {
                        b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.v(a)).append("()").toString());
                    }
                    if (AdMarvelActivity.w(a) != null && AdMarvelActivity.w(a).length() > 0)
                    {
                        b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.w(a)).append("()").toString());
                    }
                    return;
                } else
                {
                    b.loadUrl((new StringBuilder()).append("javascript:AdApp.videoView().setDuration(").append(mediaplayer.getDuration() / 1000).append(")").toString());
                    b.loadUrl("javascript:AdApp.videoView().setCanPlay(true)");
                    b.loadUrl("javascript:AdApp.adView().play()");
                    return;
                }
            }

            
            {
                c = AdMarvelActivity.q.this;
                a = admarvelactivity;
                b = admarvelinternalwebview;
                super();
            }
        });
        p2.a(new android.media.MediaPlayer.OnCompletionListener(admarvelactivity, admarvelinternalwebview) {

            final AdMarvelActivity a;
            final AdMarvelInternalWebView b;
            final AdMarvelActivity.q c;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                AdMarvelActivity.d d;
                if (a.d)
                {
                    if (AdMarvelActivity.x(a) != null && AdMarvelActivity.x(a).length() > 0)
                    {
                        b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.x(a)).append("()").toString());
                    }
                } else
                {
                    b.loadUrl("javascript:AdApp.videoView().end();");
                }
                d = new AdMarvelActivity.d(a);
                AdMarvelActivity.f(a).post(d);
            }

            
            {
                c = AdMarvelActivity.q.this;
                a = admarvelactivity;
                b = admarvelinternalwebview;
                super();
            }
        });
        p2.a(new android.media.MediaPlayer.OnErrorListener(admarvelactivity, admarvelinternalwebview) {

            final AdMarvelActivity a;
            final AdMarvelInternalWebView b;
            final AdMarvelActivity.q c;

            public boolean onError(MediaPlayer mediaplayer, int l, int i1)
            {
                AdMarvelActivity.d d = new AdMarvelActivity.d(a);
                AdMarvelActivity.f(a).post(d);
                if (a.d && AdMarvelActivity.y(a) != null && AdMarvelActivity.y(a).length() > 0)
                {
                    b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.y(a)).append("()").toString());
                }
                return false;
            }

            
            {
                c = AdMarvelActivity.q.this;
                a = admarvelactivity;
                b = admarvelinternalwebview;
                super();
            }
        });
        return;
_L5:
        if (c != null)
        {
            p1.a(Uri.parse(c));
            return;
        }
          goto _L2
_L7:
        p2.setLayoutParams(new android.widget.utParams(1, 1));
        relativelayout.addView(p2);
          goto _L11
_L2:
        return;
_L10:
        j++;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public View(String s, AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = s;
        a = new WeakReference(admarvelactivity);
        b = new WeakReference(admarvelinternalwebview);
    }
}
