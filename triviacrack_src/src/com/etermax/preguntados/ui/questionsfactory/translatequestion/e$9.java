// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.content.res.Resources;
import android.view.View;
import android.widget.EditText;
import com.etermax.f;
import com.etermax.preguntados.ui.questionsfactory.widget.SuggestQuestionEditText;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e

class a
    implements android.view..OnFocusChangeListener
{

    final e a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            SuggestQuestionEditText suggestquestionedittext = (SuggestQuestionEditText)view;
            suggestquestionedittext.setHintTextColor(a.getResources().getColor(f.transparent));
            suggestquestionedittext.a();
            return;
        } else
        {
            ((EditText)view).setHintTextColor(a.getResources().getColor(f.grayLighter));
            return;
        }
    }

    EditText(e e1)
    {
        a = e1;
        super();
    }
}
