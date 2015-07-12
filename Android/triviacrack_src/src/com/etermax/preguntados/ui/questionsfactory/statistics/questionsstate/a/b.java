// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            a, n, d, c

public class b extends a
{

    private int c;

    public b(QuestionCategory questioncategory, int i)
    {
        super(n.a, questioncategory);
        c = i;
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        c c1;
        if (view == null)
        {
            c1 = d.a(context);
        } else
        {
            c1 = (c)view;
        }
        c1.a(b, c);
        return c1;
    }
}
