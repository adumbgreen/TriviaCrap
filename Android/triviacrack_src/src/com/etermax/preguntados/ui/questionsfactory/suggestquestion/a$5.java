// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.content.res.Resources;
import android.view.View;
import com.etermax.f;
import com.etermax.preguntados.ui.questionsfactory.widget.SuggestQuestionEditText;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a

class a
    implements android.view..OnFocusChangeListener
{

    final SuggestQuestionEditText a;
    final a b;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            a.setHintTextColor(b.getResources().getColor(f.transparent));
            a.a();
            return;
        } else
        {
            a.setHintTextColor(b.getResources().getColor(f.grayLighter));
            return;
        }
    }

    onEditText(a a1, SuggestQuestionEditText suggestquestionedittext)
    {
        b = a1;
        a = suggestquestionedittext;
        super();
    }
}
