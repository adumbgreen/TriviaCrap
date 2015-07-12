// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.etermax.preguntados.ui.dashboard.h;

public abstract class a extends FrameLayout
{

    protected h a;

    public a(Context context, h h)
    {
        super(context);
        a = h;
        c();
    }

    private void c()
    {
        inflate(getContext(), getLayoutResourceId(), this);
        a();
        setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                a.getClickAction();
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public abstract void a();

    public abstract void b();

    public abstract void getClickAction();

    public abstract int getLayoutResourceId();
}
