// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.widget.ImageView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings.adapter.view:
//            c

public final class d extends com.etermax.preguntados.ui.rankings.adapter.view.c
    implements a, b
{

    private boolean b;
    private final c c = new c();

    public d(Context context)
    {
        super(context);
        b = false;
        b();
    }

    public static com.etermax.preguntados.ui.rankings.adapter.view.c a(Context context)
    {
        d d1 = new d(context);
        d1.onFinishInflate();
        return d1;
    }

    private void b()
    {
        c c1 = org.a.a.b.c.a(c);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a = (ImageView)a1.findViewById(0x7f0a0044);
        a();
    }

    public void onFinishInflate()
    {
        if (!b)
        {
            b = true;
            inflate(getContext(), 0x7f03010a, this);
            c.a(this);
        }
        super.onFinishInflate();
    }
}
