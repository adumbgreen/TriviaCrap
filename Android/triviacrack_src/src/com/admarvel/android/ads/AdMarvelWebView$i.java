// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            ab, AdMarvelWebView

class a extends LinearLayout
{

    private final WeakReference a;

    private void a(Context context)
    {
        setBackgroundColor(0);
        android.widget.tParams tparams = new android.widget.tParams(ab.a(50F, context), ab.a(50F, context));
        tparams.weight = 1.0F;
        tparams.width = 0;
        tparams.gravity = 17;
        setLayoutParams(tparams);
        android.widget.tParams tparams1 = new android.widget.tParams(-2, -2);
        tparams1.weight = 25F;
        tparams1.gravity = 17;
        float f = TypedValue.applyDimension(1, 36F, getResources().getDisplayMetrics());
        android.widget.outParams outparams = new android.widget.outParams((int)f, (int)f);
        outparams.addRule(13);
        a(context, outparams, tparams);
    }

    private void a(Context context, android.widget.outParams outparams, android.widget.tParams tparams)
    {
        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
        if (admarvelwebview == null)
        {
            return;
        }
        ImageView imageview = new ImageView(context);
        imageview.setLayoutParams(outparams);
        android.graphics.drawable.BitmapDrawable bitmapdrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("close", context);
        imageview.setTag("BTN_CLOSE_IMAGE");
        RelativeLayout relativelayout;
        if (!AdMarvelWebView.v(admarvelwebview))
        {
            imageview.setImageDrawable(bitmapdrawable);
        } else
        {
            imageview.setBackgroundColor(0);
        }
        relativelayout = new RelativeLayout(context);
        relativelayout.setLayoutParams(tparams);
        relativelayout.addView(imageview);
        relativelayout.setOnClickListener(new android.view.View.OnClickListener(admarvelwebview) {

            final AdMarvelWebView a;
            final AdMarvelWebView.i b;

            public void onClick(View view)
            {
                AdMarvelWebView.d(a).post(new AdMarvelWebView.j(a));
            }

            
            {
                b = AdMarvelWebView.i.this;
                a = admarvelwebview;
                super();
            }
        });
        addView(relativelayout);
    }

    public _cls1.a(Context context, AdMarvelWebView admarvelwebview)
    {
        super(context);
        a = new WeakReference(admarvelwebview);
        a(context);
    }
}
