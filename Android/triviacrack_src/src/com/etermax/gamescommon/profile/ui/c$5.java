// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            c

class a
    implements android.view..OnClickListener
{

    final EditText a;
    final c b;

    public void onClick(View view)
    {
        b.a(view.getWindowToken());
        a.setText("");
        b.a("");
    }

    (c c1, EditText edittext)
    {
        b = c1;
        a = edittext;
        super();
    }
}
