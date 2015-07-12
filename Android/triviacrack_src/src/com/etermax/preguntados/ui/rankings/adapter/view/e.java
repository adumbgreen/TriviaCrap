// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class e extends RelativeLayout
{

    View a;
    TextView b;
    TextView c;

    public e(Context context)
    {
        super(context);
    }

    public void setHeaderColor(int i)
    {
        a.setBackgroundColor(i);
    }

    public void setLeftTitle(String s)
    {
        c.setText(s);
    }

    public void setRightTitle(String s)
    {
        b.setText(s);
    }
}
