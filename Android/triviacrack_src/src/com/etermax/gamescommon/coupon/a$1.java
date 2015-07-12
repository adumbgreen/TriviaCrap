// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.coupon;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.etermax.gamescommon.coupon:
//            a

class a
    implements android.widget.View.OnEditorActionListener
{

    final a a;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        switch (i)
        {
        default:
            return false;

        case 4: // '\004'
            com.etermax.gamescommon.coupon.a.a(a);
            break;
        }
        return true;
    }

    ionListener(a a1)
    {
        a = a1;
        super();
    }
}
