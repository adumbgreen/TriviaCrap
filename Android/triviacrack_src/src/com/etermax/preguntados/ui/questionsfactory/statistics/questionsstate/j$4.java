// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.QuestionsFactoryLimitsDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            j

class b
    implements TextWatcher
{

    final TextView a;
    final EditText b;
    final j c;

    public void afterTextChanged(Editable editable)
    {
        a.setText(String.valueOf(c.b.getConfig().getAnswersMaxSize() - b.length()));
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int k, int l)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int k, int l)
    {
    }

    (j j1, TextView textview, EditText edittext)
    {
        c = j1;
        a = textview;
        b = edittext;
        super();
    }
}
