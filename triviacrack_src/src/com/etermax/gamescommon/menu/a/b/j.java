// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.gamescommon.menu.a.o;

public class j extends RelativeLayout
{

    protected TextView a;

    public j(Context context)
    {
        super(context);
    }

    public void a(o o1)
    {
        a.setText(o1.a());
    }
}
