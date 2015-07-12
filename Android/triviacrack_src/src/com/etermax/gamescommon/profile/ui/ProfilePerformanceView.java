// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.etermax.tools.widget.CustomFontTextView;

public class ProfilePerformanceView extends RelativeLayout
{

    protected CustomFontTextView a;
    protected CustomFontTextView b;
    protected CustomFontTextView c;

    public ProfilePerformanceView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ProfilePerformanceView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void a()
    {
        a.setVisibility(4);
        b.setVisibility(4);
        c.setVisibility(4);
    }

    public void setLooses(long l)
    {
        b.setText(String.valueOf(l));
        b.setVisibility(0);
    }

    public void setResigned(int i)
    {
        c.setText((new StringBuilder()).append(String.valueOf(i)).append("%").toString());
        c.setVisibility(0);
    }

    public void setWon(long l)
    {
        a.setText(String.valueOf(l));
        a.setVisibility(0);
    }
}
