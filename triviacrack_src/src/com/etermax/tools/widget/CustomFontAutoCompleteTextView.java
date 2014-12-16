// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
import com.etermax.q;
import com.etermax.tools.c;

public class CustomFontAutoCompleteTextView extends AutoCompleteTextView
{

    public CustomFontAutoCompleteTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public CustomFontAutoCompleteTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.TextViewFont);
        String s = typedarray.getString(0);
        if (s != null)
        {
            a(context, s);
        }
        typedarray.recycle();
    }

    public boolean a(Context context, String s)
    {
        setTypeface(c.a(context, s));
        return true;
    }
}
