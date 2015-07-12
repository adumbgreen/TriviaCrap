// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            b, m

public final class c extends com.etermax.gamescommon.achievements.ui.b
    implements a, b
{

    private boolean e;
    private final org.a.a.b.c f = new org.a.a.b.c();

    public c(Context context)
    {
        super(context);
        e = false;
        a();
    }

    public static com.etermax.gamescommon.achievements.ui.b a(Context context)
    {
        c c1 = new c(context);
        c1.onFinishInflate();
        return c1;
    }

    private void a()
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(f);
        org.a.a.b.c.a(this);
        d = com.etermax.gamescommon.achievements.ui.m.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        b = (ImageView)a1.findViewById(0x7f0a007c);
        c = (ProgressBar)a1.findViewById(0x7f0a007d);
        a = (TextView)a1.findViewById(0x7f0a0048);
    }

    public void onFinishInflate()
    {
        if (!e)
        {
            e = true;
            inflate(getContext(), 0x7f03001c, this);
            f.a(this);
        }
        super.onFinishInflate();
    }
}
