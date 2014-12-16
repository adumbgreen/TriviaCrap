// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e

class a
    implements android.view..OnClickListener
{

    final EditText a;
    final e b;

    public void onClick(View view)
    {
        a.setText("");
    }

    (e e1, EditText edittext)
    {
        b = e1;
        a = edittext;
        super();
    }
}
