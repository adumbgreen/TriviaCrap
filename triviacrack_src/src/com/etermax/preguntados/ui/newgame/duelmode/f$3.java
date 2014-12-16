// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            f

class a
    implements android.view..OnClickListener
{

    final EditText a;
    final f b;

    public void onClick(View view)
    {
        a.getText().clear();
    }

    (f f1, EditText edittext)
    {
        b = f1;
        a = edittext;
        super();
    }
}
