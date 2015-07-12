// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a

class a
    implements TextWatcher
{

    final a a;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        com.etermax.gamescommon.i.b.a.j(a).setVisibility(0);
        com.etermax.gamescommon.i.b.a.a(a, true);
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
