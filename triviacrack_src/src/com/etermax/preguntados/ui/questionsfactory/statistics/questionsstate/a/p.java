// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class p extends LinearLayout
{

    protected TextView a;
    protected ProgressBar b;

    public p(Context context)
    {
        super(context);
    }

    public void a()
    {
        a.setVisibility(0);
        b.setVisibility(8);
    }

    public void b()
    {
        a.setVisibility(8);
        b.setVisibility(0);
    }
}
