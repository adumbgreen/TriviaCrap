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
//            e

public final class f extends e
    implements a, b
{

    private boolean b;
    private final c c = new c();

    public f(Context context)
    {
        super(context);
        b = false;
        a();
    }

    public static e a(Context context)
    {
        f f1 = new f(context);
        f1.onFinishInflate();
        return f1;
    }

    private void a()
    {
        c c1 = org.a.a.b.c.a(c);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a = (TextView)a1.findViewById(0x7f0a00ab);
    }

    public void onFinishInflate()
    {
        if (!b)
        {
            b = true;
            inflate(getContext(), 0x7f03008e, this);
            c.a(this);
        }
        super.onFinishInflate();
    }
}
