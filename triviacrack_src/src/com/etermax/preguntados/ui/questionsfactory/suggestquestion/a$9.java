// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.content.res.Resources;
import android.view.View;
import android.widget.EditText;
import com.etermax.f;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a

class b
    implements android.view..OnFocusChangeListener
{

    final EditText a;
    final int b;
    final a c;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            a.setHintTextColor(c.getResources().getColor(f.transparent));
            return;
        } else
        {
            a.setHintTextColor(c.getResources().getColor(b));
            return;
        }
    }

    (a a1, EditText edittext, int i)
    {
        c = a1;
        a = edittext;
        b = i;
        super();
    }
}
