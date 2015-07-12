// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.crown;

import android.view.View;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.game.question.crown:
//            a

class a
    implements android.view..OnClickListener
{

    final QuestionCategory a;
    final a b;

    public void onClick(View view)
    {
        com.etermax.preguntados.ui.game.question.crown.a.a(b, a);
    }

    onCategory(a a1, QuestionCategory questioncategory)
    {
        b = a1;
        a = questioncategory;
        super();
    }
}
