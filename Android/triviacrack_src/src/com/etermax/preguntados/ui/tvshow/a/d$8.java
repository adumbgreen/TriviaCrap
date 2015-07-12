// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow.a;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.tvshow.a:
//            d

class a
    implements TextWatcher
{

    final TextView a;
    final d b;

    public void afterTextChanged(Editable editable)
    {
        b.a(a);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (d d1, TextView textview)
    {
        b = d1;
        a = textview;
        super();
    }
}
