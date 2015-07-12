// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.view.View;
import android.widget.ScrollView;
import com.etermax.i;
import com.etermax.preguntados.ui.questionsfactory.widget.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e

class a
    implements b
{

    final View a;
    final e b;

    public void a()
    {
        View view = a.findViewById(e.a(b, "text_translation_answer_", 1));
        ((ScrollView)a.findViewById(i.translation_scroll)).smoothScrollTo(0, a.findViewById(e.a(b, "translate_questions_answer_", 1)).getTop());
        view.requestFocus();
    }

    (e e1, View view)
    {
        b = e1;
        a = view;
        super();
    }
}
