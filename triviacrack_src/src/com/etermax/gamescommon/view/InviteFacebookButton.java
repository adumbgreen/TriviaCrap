// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class InviteFacebookButton extends FrameLayout
{

    public InviteFacebookButton(Context context)
    {
        super(context);
    }

    public InviteFacebookButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public InviteFacebookButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.getSize(j);
        if (k <= l || l <= 0)
        {
            j = i;
        }
        super.onMeasure(j, j);
    }
}
