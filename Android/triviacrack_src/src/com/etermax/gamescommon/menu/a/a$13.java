// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            a

class a
    implements android.widget.iew.OnEditorActionListener
{

    final a a;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        switch (i)
        {
        default:
            return false;

        case 4: // '\004'
            a.a(textview.getWindowToken());
            break;
        }
        a.g();
        return true;
    }

    onListener(a a1)
    {
        a = a1;
        super();
    }
}
