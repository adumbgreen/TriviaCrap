// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Filter;
import com.etermax.preguntados.ui.newgame.duelmode.a.a.b;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            j

class a
    implements TextWatcher
{

    final j a;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int k, int l)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int k, int l)
    {
        j.a(a, false);
        j.a(a).getFilter().filter(charsequence);
    }

    b(j j1)
    {
        a = j1;
        super();
    }
}
