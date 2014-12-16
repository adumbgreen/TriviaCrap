// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.content.res.Resources;
import android.view.View;
import android.widget.EditText;
import com.etermax.f;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            a

class a
    implements android.view..OnFocusChangeListener
{

    final a a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            ((EditText)view).setHintTextColor(a.getResources().getColor(f.transparent));
            return;
        } else
        {
            ((EditText)view).setHintTextColor(a.getResources().getColor(f.grayLight));
            return;
        }
    }

    I(a a1)
    {
        a = a1;
        super();
    }
}
