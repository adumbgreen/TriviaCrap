// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.widget.Toast;
import com.etermax.o;
import com.etermax.preguntados.datasource.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.r;
import com.etermax.tools.i.a;
import java.util.Map;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            a

class a extends a
{

    final com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a a;

    public Object a()
    {
        return b();
    }

    public void a(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a a1, Exception exception)
    {
        if ((exception instanceof b) && ((b)exception).c() == 416)
        {
            Toast.makeText(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a(a), a.getString(o.no_more_questions), 0).show();
            b(false);
            com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.b(a).a();
        }
        super.a(a1, exception);
    }

    public void a(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a a1, Map map)
    {
        super.a(a1, map);
        com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a(a1, map);
    }

    public volatile void a(Object obj, Exception exception)
    {
        a((com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a)obj, exception);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a)obj, (Map)obj1);
    }

    public Map b()
    {
        return a.a.a(a.a(), a.b);
    }

    (com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a a1, String s)
    {
        a = a1;
        super(s);
    }
}
