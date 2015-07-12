// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.QuestionsFactoryLimitsDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a

class b
    implements TextWatcher
{

    final TextView a;
    final EditText b;
    final a c;

    public void afterTextChanged(Editable editable)
    {
        a.setText(String.valueOf(c.a.getConfig().getAnswersMaxSize() - b.length()));
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (a a1, TextView textview, EditText edittext)
    {
        c = a1;
        a = textview;
        b = edittext;
        super();
    }
}
