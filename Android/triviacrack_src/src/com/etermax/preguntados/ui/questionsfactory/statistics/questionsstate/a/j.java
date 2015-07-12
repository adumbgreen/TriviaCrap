// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.widget.TextView;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            i

public final class j extends i
    implements a, b
{

    private boolean e;
    private final c f = new c();

    public j(Context context)
    {
        super(context);
        e = false;
        a();
    }

    public static i a(Context context)
    {
        j j1 = new j(context);
        j1.onFinishInflate();
        return j1;
    }

    private void a()
    {
        c c1 = c.a(f);
        c.a(this);
        a = com.etermax.preguntados.datasource.e.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        b = (TextView)a1.findViewById(0x7f0a04d2);
        d = (TextView)a1.findViewById(0x7f0a04db);
        c = (TextView)a1.findViewById(0x7f0a04da);
    }

    public void onFinishInflate()
    {
        if (!e)
        {
            e = true;
            inflate(getContext(), 0x7f03012e, this);
            f.a(this);
        }
        super.onFinishInflate();
    }
}
