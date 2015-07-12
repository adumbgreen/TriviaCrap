// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            g

class a
    implements android.widget.View.OnEditorActionListener
{

    final g a;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        switch (i)
        {
        default:
            return false;

        case 4: // '\004'
            a.c();
            break;
        }
        return true;
    }

    nListener(g g1)
    {
        a = g1;
        super();
    }
}
