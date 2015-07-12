// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.view.View;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            e, f

class g
    implements android.view.View.OnClickListener
{

    final e a;
    private QuestionCategory b;

    public g(e e1, QuestionCategory questioncategory)
    {
        a = e1;
        super();
        b = questioncategory;
    }

    public void onClick(View view)
    {
        ((f)e.b(a)).a(b);
    }
}
