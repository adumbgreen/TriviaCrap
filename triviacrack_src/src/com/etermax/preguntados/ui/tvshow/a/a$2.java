// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow.a;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.etermax.preguntados.ui.tvshow.a:
//            a

class a
    implements android.view..OnFocusChangeListener
{

    final a a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag && a.h.getError() == null)
        {
            com.etermax.preguntados.ui.tvshow.a.a.a(a);
        }
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
