// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.etermax.preguntados.ui.newgame.duelmode.a.a.b;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            j

class a
    implements android.view..OnClickListener
{

    final EditText a;
    final j b;

    public void onClick(View view)
    {
        a.getText().clear();
        j.a(b).notifyDataSetChanged();
    }

    b(j j1, EditText edittext)
    {
        b = j1;
        a = edittext;
        super();
    }
}
