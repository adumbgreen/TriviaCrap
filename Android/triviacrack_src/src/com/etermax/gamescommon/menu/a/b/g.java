// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.h;

public class g extends RelativeLayout
{

    protected TextView a;
    protected ProgressBar b;

    public g(Context context)
    {
        super(context);
    }

    protected void a()
    {
        setBackgroundResource(h.navigation_panel_item_states);
    }

    public void b()
    {
        a.setVisibility(0);
        b.setVisibility(8);
    }

    public void c()
    {
        a.setVisibility(8);
        b.setVisibility(0);
    }
}
