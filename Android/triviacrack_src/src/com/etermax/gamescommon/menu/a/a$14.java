// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.view.KeyEvent;
import android.view.View;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            a

class a
    implements android.view.OnKeyListener
{

    final a a;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        if (i == 66 && keyevent.getAction() == 1)
        {
            a.a(view.getWindowToken());
            a.g();
            return true;
        } else
        {
            return false;
        }
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
