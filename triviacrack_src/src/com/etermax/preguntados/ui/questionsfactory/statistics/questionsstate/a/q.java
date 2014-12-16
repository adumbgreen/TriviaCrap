// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.widget.ProgressBar;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            p

public final class q extends p
    implements a, b
{

    private boolean c;
    private final c d = new c();

    public q(Context context)
    {
        super(context);
        c = false;
        c();
    }

    public static p a(Context context)
    {
        q q1 = new q(context);
        q1.onFinishInflate();
        return q1;
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(d);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        b = (ProgressBar)a1.findViewById(0x7f0a04dc);
        a = (TextView)a1.findViewById(0x7f0a04d2);
    }

    public void onFinishInflate()
    {
        if (!c)
        {
            c = true;
            inflate(getContext(), 0x7f03012f, this);
            d.a(this);
        }
        super.onFinishInflate();
    }
}
