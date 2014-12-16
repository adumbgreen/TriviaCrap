// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;

import android.view.ViewGroup;
import android.widget.Button;

public class Interstitials
{

    private Interstitials()
    {
    }

    public static boolean addCloseEventRegion(ViewGroup viewgroup, android.view.ViewGroup.LayoutParams layoutparams, android.view.View.OnClickListener onclicklistener)
    {
        if (viewgroup == null || viewgroup.getContext() == null)
        {
            return false;
        } else
        {
            Button button = new Button(viewgroup.getContext());
            button.setVisibility(0);
            button.setBackgroundColor(0);
            button.setOnClickListener(onclicklistener);
            viewgroup.addView(button, layoutparams);
            return true;
        }
    }
}
