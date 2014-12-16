// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            c

class a
    implements android.view..OnKeyListener
{

    final c a;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        if (i == 66 && keyevent.getAction() == 1)
        {
            a.a(view.getWindowToken());
            a.a(((TextView)view).getText());
            return true;
        } else
        {
            return false;
        }
    }

    (c c1)
    {
        a = c1;
        super();
    }
}
