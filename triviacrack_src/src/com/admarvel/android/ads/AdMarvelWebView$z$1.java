// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView

class b
    implements Runnable
{

    final AdMarvelWebView a;
    final int b;
    final b c;

    public void run()
    {
        ViewGroup viewgroup;
        RelativeLayout relativelayout;
        Activity activity = (Activity)b(c).get();
        if (activity == null || !AdMarvelWebView.f(a))
        {
            break MISSING_BLOCK_LABEL_214;
        }
        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
        relativelayout = (RelativeLayout)viewgroup.findViewWithTag((new StringBuilder()).append(a.e).append("EXPAND_LAYOUT").toString());
        if (relativelayout != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        android.widget.rams rams;
        LinearLayout linearlayout;
        rams = (android.widget.rams)relativelayout.getLayoutParams();
        linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(a.e).append("BTN_CLOSE").toString());
        if (linearlayout == null) goto _L1; else goto _L3
_L3:
        android.widget.tParams tparams = (android.widget.tParams)linearlayout.getLayoutParams();
        int i = viewgroup.getHeight();
        int j = viewgroup.getWidth();
        float f = TypedValue.applyDimension(1, 30F, a.getContext().getResources().getDisplayMetrics());
        AdMarvelWebView.a(linearlayout, tparams, AdMarvelWebView.r(a), rams.leftMargin, rams.topMargin, rams.width, rams.height, j, i, (int)f);
        t(c, b);
        return;
    }

    ( , AdMarvelWebView admarvelwebview, int i)
    {
        c = ;
        a = admarvelwebview;
        b = i;
        super();
    }
}
