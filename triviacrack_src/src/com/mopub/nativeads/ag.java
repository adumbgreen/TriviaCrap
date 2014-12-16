// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;

class ag extends ViewGroup
{

    private final ProgressBar a;
    private int b;

    ag(Context context)
    {
        super(context);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        layoutparams.gravity = 17;
        setLayoutParams(layoutparams);
        setVisibility(8);
        setBackgroundColor(0xff000000);
        getBackground().setAlpha(180);
        a = new ProgressBar(context);
        b = Dips.asIntPixels(25F, getContext());
        a.setIndeterminate(true);
        addView(a);
    }

    boolean a()
    {
        Views.removeFromParent(this);
        setVisibility(8);
        return true;
    }

    boolean a(View view)
    {
        if (view == null)
        {
            return false;
        }
        View view1 = view.getRootView();
        if (view1 != null && (view1 instanceof ViewGroup))
        {
            ViewGroup viewgroup = (ViewGroup)view1;
            setVisibility(0);
            setMeasuredDimension(view1.getWidth(), view1.getHeight());
            viewgroup.addView(this);
            forceLayout();
            return true;
        } else
        {
            return false;
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (flag)
        {
            int i1 = (i + k) / 2;
            int j1 = (j + l) / 2;
            a.layout(i1 - b, j1 - b, i1 + b, j1 + b);
        }
    }
}
