// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.view.View;
import android.widget.EditText;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e

class b
    implements android.view..OnClickListener
{

    final EditText a;
    final int b;
    final e c;

    public void onClick(View view)
    {
        a.setText((CharSequence)c.e.getAnswers().get(b));
    }

    (e e1, EditText edittext, int i)
    {
        c = e1;
        a = edittext;
        b = i;
        super();
    }
}
