// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.Button;
import com.google.android.gms.b;
import com.google.android.gms.c;
import com.google.android.gms.d;

// Referenced classes of package com.google.android.gms.internal:
//            ib

public final class hp extends Button
{

    public hp(Context context)
    {
        this(context, null);
    }

    public hp(Context context, AttributeSet attributeset)
    {
        super(context, attributeset, 0x1010048);
    }

    private int a(int i, int j, int k)
    {
        switch (i)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown color scheme: ").append(i).toString());

        case 1: // '\001'
            j = k;
            // fall through

        case 0: // '\0'
            return j;
        }
    }

    private void a(Resources resources)
    {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14F);
        float f = resources.getDisplayMetrics().density;
        setMinHeight((int)(0.5F + f * 48F));
        setMinWidth((int)(0.5F + f * 48F));
    }

    private void b(Resources resources, int i, int j)
    {
        int k;
        switch (i)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown button size: ").append(i).toString());

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_84;

        case 0: // '\0'
        case 1: // '\001'
            k = a(j, c.common_signin_btn_text_dark, c.common_signin_btn_text_light);
            break;
        }
_L1:
        if (k == -1)
        {
            throw new IllegalStateException("Could not find background resource!");
        } else
        {
            setBackgroundDrawable(resources.getDrawable(k));
            return;
        }
        k = a(j, c.common_signin_btn_icon_dark, c.common_signin_btn_icon_light);
          goto _L1
    }

    private void c(Resources resources, int i, int j)
    {
        setTextColor(resources.getColorStateList(a(j, b.common_signin_btn_text_dark, b.common_signin_btn_text_light)));
        switch (i)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown button size: ").append(i).toString());

        case 0: // '\0'
            setText(resources.getString(d.common_signin_button_text));
            return;

        case 1: // '\001'
            setText(resources.getString(d.common_signin_button_text_long));
            return;

        case 2: // '\002'
            setText(null);
            break;
        }
    }

    public void a(Resources resources, int i, int j)
    {
        boolean flag;
        Object aobj[];
        boolean flag1;
        Object aobj1[];
        if (i >= 0 && i < 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(i);
        ib.a(flag, "Unknown button size %d", aobj);
        if (j >= 0 && j < 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        aobj1 = new Object[1];
        aobj1[0] = Integer.valueOf(j);
        ib.a(flag1, "Unknown color scheme %s", aobj1);
        a(resources);
        b(resources, i, j);
        c(resources, i, j);
    }
}
