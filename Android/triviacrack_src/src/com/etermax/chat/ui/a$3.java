// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.view.KeyEvent;
import android.view.View;

// Referenced classes of package com.etermax.chat.ui:
//            a

class a
    implements android.view..OnKeyListener
{

    final a a;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        int j = keyevent.getKeyCode();
        boolean flag = false;
        if (j == 4)
        {
            boolean flag1 = com.etermax.chat.ui.a.a(a);
            flag = false;
            if (flag1)
            {
                a.b();
                flag = true;
            }
        }
        return flag;
    }

    istener(a a1)
    {
        a = a1;
        super();
    }
}
