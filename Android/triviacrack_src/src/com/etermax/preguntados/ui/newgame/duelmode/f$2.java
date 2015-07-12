// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            f

class a
    implements TextWatcher
{

    final f a;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            f.a(a, false);
            a.a(charsequence.toString());
        }
    }

    (f f1)
    {
        a = f1;
        super();
    }
}
