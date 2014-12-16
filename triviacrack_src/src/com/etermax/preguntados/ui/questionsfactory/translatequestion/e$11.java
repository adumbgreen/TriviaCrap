// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e

class b
    implements TextWatcher
{

    final TextView a;
    final EditText b;
    final e c;

    public void afterTextChanged(Editable editable)
    {
        a.setText(String.valueOf(42 - b.length()));
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (e e1, TextView textview, EditText edittext)
    {
        c = e1;
        a = textview;
        b = edittext;
        super();
    }
}
