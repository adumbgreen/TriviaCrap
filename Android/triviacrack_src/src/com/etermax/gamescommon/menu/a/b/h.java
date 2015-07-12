// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.widget.ProgressBar;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            g

public final class h extends g
    implements a, b
{

    private boolean c;
    private final c d = new c();

    public h(Context context)
    {
        super(context);
        c = false;
        d();
    }

    public static g a(Context context)
    {
        h h1 = new h(context);
        h1.onFinishInflate();
        return h1;
    }

    private void d()
    {
        c c1 = org.a.a.b.c.a(d);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a = (TextView)a1.findViewById(0x7f0a00ca);
        b = (ProgressBar)a1.findViewById(0x7f0a00a3);
        a();
    }

    public void onFinishInflate()
    {
        if (!c)
        {
            c = true;
            inflate(getContext(), 0x7f03008f, this);
            d.a(this);
        }
        super.onFinishInflate();
    }
}
