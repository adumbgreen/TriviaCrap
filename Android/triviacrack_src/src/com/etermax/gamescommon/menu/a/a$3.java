// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            a

class a
    implements android.view..OnTouchListener
{

    final a a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0 && a.getParent() != null)
        {
            a.getParent().requestDisallowInterceptTouchEvent(true);
        }
        return false;
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
