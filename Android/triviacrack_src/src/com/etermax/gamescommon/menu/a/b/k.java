// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            j

public final class k extends j
    implements a, b
{

    private boolean b;
    private final c c = new c();

    public k(Context context)
    {
        super(context);
        b = false;
        a();
    }

    public static j a(Context context)
    {
        k k1 = new k(context);
        k1.onFinishInflate();
        return k1;
    }

    private void a()
    {
        c c1 = org.a.a.b.c.a(c);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a = (TextView)a1.findViewById(0x7f0a0048);
    }

    public void onFinishInflate()
    {
        if (!b)
        {
            b = true;
            inflate(getContext(), 0x7f030090, this);
            c.a(this);
        }
        super.onFinishInflate();
    }
}
