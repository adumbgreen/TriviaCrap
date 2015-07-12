// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            b, c

class a
    implements android.widget.View.OnEditorActionListener
{

    final EditText a;
    final b b;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 3 || i == 6 || i == 2 || i == 5 || i == 4 || keyevent.getAction() == 23 || keyevent.getAction() == 66 || keyevent.getAction() == 84 || keyevent.getAction() == 0)
        {
            String s = a.getText().toString();
            if (com.etermax.preguntados.ui.newgame.duelmode.b.a(b, s))
            {
                ((c)com.etermax.preguntados.ui.newgame.duelmode.b.a(b)).a(s);
            }
            return true;
        } else
        {
            return false;
        }
    }

    (b b1, EditText edittext)
    {
        b = b1;
        a = edittext;
        super();
    }
}
