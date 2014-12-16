// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.view.KeyEvent;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.etermax.i;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e

class b
    implements android.widget.iew.OnEditorActionListener
{

    final int a;
    final View b;
    final e c;

    public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
    {
        if (j == 0 && keyevent.getAction() == 0)
        {
            if (a == -1 + e.g().length)
            {
                c.f();
            } else
            {
                View view = b.findViewById(e.a(c, "text_translation_answer_", 2 + a));
                ((ScrollView)b.findViewById(i.translation_scroll)).smoothScrollTo(0, b.findViewById(e.a(c, "translate_questions_answer_", 2 + a)).getTop());
                view.requestFocus();
            }
        }
        return true;
    }

    (e e1, int j, View view)
    {
        c = e1;
        a = j;
        b = view;
        super();
    }
}
