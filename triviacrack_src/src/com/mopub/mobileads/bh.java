// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.TextDrawable;

// Referenced classes of package com.mopub.mobileads:
//            bi

class bh extends RelativeLayout
{

    private TextView a;
    private ImageView b;
    private final int c;
    private final int d;
    private final int e;

    private bh(bi bi1)
    {
        super(bi.a(bi1));
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -2, bi.b(bi1));
        layoutparams.gravity = bi.c(bi1);
        setLayoutParams(layoutparams);
        c = Dips.dipsToIntPixels(5F, getContext());
        d = Dips.dipsToIntPixels(5F, getContext());
        e = Dips.dipsToIntPixels(37F, getContext());
        setVisibility(bi.d(bi1));
        if (bi.e(bi1) && bi.f(bi1) != null)
        {
            b = new ImageView(getContext());
            b.setId((int)Utils.generateUniqueId());
            android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(e, e);
            layoutparams2.addRule(15);
            layoutparams2.addRule(bi.g(bi1));
            b.setPadding(d, d, d, d);
            b.setBackgroundColor(0xff000000);
            b.getBackground().setAlpha(0);
            b.setImageDrawable(bi.f(bi1));
            addView(b, layoutparams2);
        }
        if (bi.h(bi1))
        {
            a = new TextView(getContext());
            a.setSingleLine();
            a.setEllipsize(android.text.TextUtils.TruncateAt.END);
            a.setText(bi.i(bi1));
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams1.addRule(15);
            if (b != null)
            {
                layoutparams1.addRule(0, b.getId());
            } else
            {
                layoutparams1.addRule(bi.j(bi1));
            }
            a.setPadding(c, c, c, c);
            addView(a, layoutparams1);
        }
        if (bi.k(bi1) != null)
        {
            setOnTouchListener(bi.k(bi1));
        }
    }


    void a(String s)
    {
        if (a != null)
        {
            a.setText(s);
        }
    }

    void b(String s)
    {
        try
        {
            ((TextDrawable)b.getDrawable()).updateText(s);
            return;
        }
        catch (Exception exception)
        {
            MoPubLog.d("Unable to update ToolbarWidget text.");
        }
    }
}
