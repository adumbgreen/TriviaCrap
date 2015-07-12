// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            a

class a
    implements android.widget.View.OnEditorActionListener
{

    final a a;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if ((i == 0 || i == 4) && keyevent != null && keyevent.getAction() == 0)
        {
            a.c();
        }
        return true;
    }

    I(a a1)
    {
        a = a1;
        super();
    }
}
