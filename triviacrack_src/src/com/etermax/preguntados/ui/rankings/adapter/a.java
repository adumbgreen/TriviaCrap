// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter;

import android.content.Context;
import android.view.View;
import com.etermax.o;
import com.etermax.preguntados.ui.game.duelmode.adapter.d;
import com.etermax.preguntados.ui.game.duelmode.adapter.e;
import com.etermax.preguntados.ui.rankings.adapter.view.b;

// Referenced classes of package com.etermax.preguntados.ui.rankings.adapter:
//            c

public class a extends c
    implements e
{

    private d c;

    public a(Context context, com.etermax.preguntados.ui.rankings.a a1, long l)
    {
        super(context, a1);
        c = new d(context, l);
        c.a(this);
    }

    public View a(Context context)
    {
        com.etermax.preguntados.ui.rankings.adapter.view.a a1 = com.etermax.preguntados.ui.rankings.adapter.view.b.a(context);
        c.a(a1);
        return a1;
    }

    public void a()
    {
        c.a();
    }

    public void a(com.etermax.preguntados.ui.rankings.adapter.view.e e1, int i)
    {
        super.a(e1, i);
        e1.setRightTitle(a.getString(o.answers_correct_plural));
    }

    public void b()
    {
        ((com.etermax.preguntados.ui.rankings.a)b).a();
    }
}
