// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings.adapter.view:
//            a

public final class b extends com.etermax.preguntados.ui.rankings.adapter.view.a
    implements a, org.a.a.b.b
{

    private boolean i;
    private final c j = new c();

    public b(Context context)
    {
        super(context);
        i = false;
        b();
    }

    public static com.etermax.preguntados.ui.rankings.adapter.view.a a(Context context)
    {
        b b1 = new b(context);
        b1.onFinishInflate();
        return b1;
    }

    private void b()
    {
        c c1 = c.a(j);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        e = (TextView)a1.findViewById(0x7f0a042c);
        a = a1.findViewById(0x7f0a008c);
        g = (TextView)a1.findViewById(0x7f0a0432);
        c = a1.findViewById(0x7f0a0429);
        h = (TextView)a1.findViewById(0x7f0a042b);
        f = (TextView)a1.findViewById(0x7f0a042f);
        d = (TextView)a1.findViewById(0x7f0a042a);
        b = (ImageView)a1.findViewById(0x7f0a0044);
        a();
    }

    public void onFinishInflate()
    {
        if (!i)
        {
            i = true;
            inflate(getContext(), 0x7f03010b, this);
            j.a(this);
        }
        super.onFinishInflate();
    }
}
