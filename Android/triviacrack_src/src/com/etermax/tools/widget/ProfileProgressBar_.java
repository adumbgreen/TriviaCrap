// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.tools.widget:
//            ProfileProgressBar

public final class ProfileProgressBar_ extends ProfileProgressBar
    implements a, b
{

    private boolean k;
    private final c l;

    public ProfileProgressBar_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        k = false;
        l = new c();
        c();
    }

    public ProfileProgressBar_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        k = false;
        l = new c();
        c();
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(l);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        f = (RelativeLayout)a1.findViewById(0x7f0a008c);
        c = (TextView)a1.findViewById(0x7f0a03b1);
        d = (RelativeLayout)a1.findViewById(0x7f0a03ae);
        b = (TextView)a1.findViewById(0x7f0a03af);
        e = (RelativeLayout)a1.findViewById(0x7f0a03b0);
        a();
    }

    public void onFinishInflate()
    {
        if (!k)
        {
            k = true;
            inflate(getContext(), 0x7f0300f8, this);
            l.a(this);
        }
        super.onFinishInflate();
    }
}
