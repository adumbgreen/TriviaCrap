// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.TextView;

public class e extends FrameLayout
{

    protected TextView a;

    public e(Context context)
    {
        super(context);
    }

    public void setMessage(int i)
    {
        a.setText(i);
    }

    public void setMessage(String s)
    {
        a.setText(s);
    }
}
