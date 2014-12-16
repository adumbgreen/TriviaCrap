// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            n

public abstract class a
{

    protected n a;
    protected QuestionCategory b;

    public a(n n, QuestionCategory questioncategory)
    {
        a = n;
        b = questioncategory;
    }

    public abstract View a(Context context, View view, BaseAdapter baseadapter);

    public n a()
    {
        return a;
    }

    public QuestionCategory b()
    {
        return b;
    }
}
