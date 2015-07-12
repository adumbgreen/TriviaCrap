// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView, p

class f
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private float c;
    private float d;
    private float e;
    private float f;

    public void run()
    {
        AdMarvelActivity admarvelactivity;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelactivity = (AdMarvelActivity)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelactivity == null)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        RelativeLayout relativelayout;
        admarvelinternalwebview.loadUrl("javascript:console.log(\"Window Innerwidth \"+window.innerWidth);");
        relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
        p p1;
        p1 = null;
        if (relativelayout == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (p1 != null)
        {
            try
            {
                if (AdMarvelActivity.z(admarvelactivity) != null)
                {
                    int i = relativelayout.getWidth();
                    int j = relativelayout.getHeight();
                    android.widget.utParams utparams = (android.widget.utParams)p1.getLayoutParams();
                    utparams.width = (int)((float)i * e);
                    utparams.height = (int)((float)j * f);
                    utparams.leftMargin = (int)((float)i * c);
                    utparams.topMargin = (int)((float)j * d);
                    p1.setLayoutParams(utparams);
                    p1.forceLayout();
                    return;
                }
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
    }

    public View(AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview, float f1, float f2, float f3, float f4)
    {
        a = new WeakReference(admarvelactivity);
        b = new WeakReference(admarvelinternalwebview);
        c = f1;
        d = f2;
        e = f3;
        f = f4;
    }
}
