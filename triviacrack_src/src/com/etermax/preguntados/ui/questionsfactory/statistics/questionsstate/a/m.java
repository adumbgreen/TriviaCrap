// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            l

public final class m extends l
    implements a, b
{

    private boolean h;
    private final c i = new c();

    public m(Context context)
    {
        super(context);
        h = false;
        a();
    }

    public static l a(Context context)
    {
        m m1 = new m(context);
        m1.onFinishInflate();
        return m1;
    }

    private void a()
    {
        c c1 = c.a(i);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        c = (TextView)a1.findViewById(0x7f0a04d9);
        a = (TextView)a1.findViewById(0x7f0a04d2);
        g = (ImageView)a1.findViewById(0x7f0a04d7);
        f = (ImageView)a1.findViewById(0x7f0a04d5);
        e = (TextView)a1.findViewById(0x7f0a04d6);
        b = (ImageView)a1.findViewById(0x7f0a04d3);
        d = (TextView)a1.findViewById(0x7f0a04d8);
    }

    public void onFinishInflate()
    {
        if (!h)
        {
            h = true;
            inflate(getContext(), 0x7f03012d, this);
            i.a(this);
        }
        super.onFinishInflate();
    }
}
