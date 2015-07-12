// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.help;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.q;

public class HelpItem extends RelativeLayout
{

    public HelpItem(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray;
        super(context, attributeset);
        typedarray = context.obtainStyledAttributes(attributeset, q.HelpItem);
        a(context, typedarray.getResourceId(0, o.learn_how_to_play), typedarray.getResourceId(1, o.learn_how_to_play));
        typedarray.recycle();
        return;
        Exception exception;
        exception;
        typedarray.recycle();
        throw exception;
    }

    public HelpItem(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
    }

    private void a(Context context, int j, int l)
    {
        inflate(context, k.help_section_item, this);
        ((TextView)findViewById(i.help_title)).setText(context.getString(j));
        ((TextView)findViewById(i.help_subtitle)).setText(context.getString(l));
    }
}
