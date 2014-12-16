// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class c
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private boolean c;

    public void run()
    {
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        break MISSING_BLOCK_LABEL_11;
        while (true) 
        {
            ViewGroup viewgroup;
            do
            {
                do
                {
                    return;
                } while (admarvelinternalwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview));
                Activity activity = (Activity)(Context)a.get();
                if (activity == null)
                {
                    continue;
                }
                viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                if (!c)
                {
                    break;
                }
                if (!AdMarvelInternalWebView.c(admarvelinternalwebview))
                {
                    LinearLayout linearlayout1 = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE").toString());
                    if (linearlayout1 != null && AdMarvelInternalWebView.b(admarvelinternalwebview))
                    {
                        linearlayout1.setVisibility(8);
                        return;
                    }
                } else
                {
                    ImageView imageview1 = (ImageView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE_IMAGE").toString());
                    if (imageview1 != null)
                    {
                        imageview1.setVisibility(4);
                        return;
                    }
                }
            } while (true);
            LinearLayout linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE").toString());
            if (linearlayout != null)
            {
                if (linearlayout.getVisibility() != 0)
                {
                    linearlayout.setVisibility(0);
                }
                ImageView imageview = (ImageView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE_IMAGE").toString());
                if (imageview != null && imageview.getVisibility() != 0)
                {
                    imageview.setVisibility(0);
                    return;
                }
            }
        }
    }

    public (AdMarvelInternalWebView admarvelinternalwebview, Context context, Boolean boolean1)
    {
        c = true;
        a = new WeakReference(context);
        b = new WeakReference(admarvelinternalwebview);
        c = boolean1.booleanValue();
    }
}
