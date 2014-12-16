// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            a, n, q, p

public class o extends a
{

    private boolean c;

    public o(QuestionCategory questioncategory)
    {
        super(n.c, questioncategory);
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        p p1;
        if (view == null)
        {
            p1 = q.a(context);
        } else
        {
            p1 = (p)view;
        }
        if (c())
        {
            p1.b();
            return p1;
        } else
        {
            p1.a();
            return p1;
        }
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public boolean c()
    {
        return c;
    }
}
