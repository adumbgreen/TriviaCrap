// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings.adapter.view:
//            e

public final class f extends e
    implements a, b
{

    private boolean d;
    private final c e = new c();

    public f(Context context)
    {
        super(context);
        d = false;
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
        c c1 = c.a(e);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        b = (TextView)a1.findViewById(0x7f0a033d);
        a = a1.findViewById(0x7f0a017a);
        c = (TextView)a1.findViewById(0x7f0a017b);
    }

    public void onFinishInflate()
    {
        if (!d)
        {
            d = true;
            inflate(getContext(), 0x7f0300dd, this);
            e.a(this);
        }
        super.onFinishInflate();
    }
}
