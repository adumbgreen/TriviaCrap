// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow.a;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.tvshow.a:
//            a

class c
    implements TextWatcher
{

    TextView a;
    final a b;

    public c(a a1, TextView textview)
    {
        b = a1;
        super();
        a = textview;
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        a.setError(null);
    }
}
