// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            c

public final class d extends com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.c
    implements a, b
{

    private boolean f;
    private final c g = new c();

    public d(Context context)
    {
        super(context);
        f = false;
        a();
    }

    public static com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.c a(Context context)
    {
        d d1 = new d(context);
        d1.onFinishInflate();
        return d1;
    }

    private void a()
    {
        c c1 = c.a(g);
        c.a(this);
        a = com.etermax.preguntados.c.a.c.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        e = (TextView)a1.findViewById(0x7f0a04cc);
        d = (TextView)a1.findViewById(0x7f0a018f);
        c = (ImageView)a1.findViewById(0x7f0a04d1);
        b = (RelativeLayout)a1.findViewById(0x7f0a0198);
    }

    public void onFinishInflate()
    {
        if (!f)
        {
            f = true;
            inflate(getContext(), 0x7f03012c, this);
            g.a(this);
        }
        super.onFinishInflate();
    }
}
