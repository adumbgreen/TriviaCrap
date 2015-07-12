// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.f;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.g;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.h;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.k;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.n;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.o;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.p;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            a

class a
    implements android.widget.terView.OnItemClickListener
{

    final BaseAdapter a;
    final com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a b;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        a a1 = (a)a.getItem(i);
        com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a[a1.a().ordinal()];
        JVM INSTR tableswitch 1 2: default 48
    //                   1 49
    //                   2 106;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        f f1 = (f)a1;
        if ((a1 instanceof k) || (a1 instanceof g))
        {
            b.b(f1.c());
            return;
        }
        if (a1 instanceof h)
        {
            b.c(f1.c());
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        o o1 = (o)a1;
        if (!o1.c())
        {
            o1.a(true);
            if (view instanceof p)
            {
                ((p)view).b();
            }
            b.(o1.b());
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    (com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a a1, BaseAdapter baseadapter)
    {
        b = a1;
        a = baseadapter;
        super();
    }
}
