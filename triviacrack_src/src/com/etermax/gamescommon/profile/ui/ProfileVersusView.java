// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.tools.widget.ProfileProgressBar;

public class ProfileVersusView extends RelativeLayout
{

    protected ProfileProgressBar a;
    protected TextView b;
    protected TextView c;
    protected TextView d;
    protected TextView e;
    protected TextView f;

    public ProfileVersusView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ProfileVersusView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void a(int i, int j)
    {
        setVisibility(0);
        a.setWins(i);
        a.setLoses(j);
        a.b();
    }

    public void a(int i, int j, boolean flag)
    {
        a(i, j);
        d.setVisibility(0);
        e.setVisibility(8);
        f.setVisibility(8);
        c.setVisibility(0);
        c.setText(Integer.toString(j + i));
    }

    public void setSectionBackground(int i)
    {
        b.setBackgroundResource(i);
    }

    public void setSectionText(int i)
    {
        b.setText(getContext().getString(i));
    }
}
