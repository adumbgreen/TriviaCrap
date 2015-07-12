// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.ImageButton;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            a, d

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
        if (TextUtils.isEmpty(charsequence))
        {
            a.e.setVisibility(8);
            a.g.k();
            a.b();
            return;
        } else
        {
            a.e.setVisibility(0);
            a.g();
            return;
        }
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
