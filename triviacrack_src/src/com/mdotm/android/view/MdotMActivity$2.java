// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.mdotm.android.view:
//            MdotMActivity

class a
    implements android.view.ener
{

    final MdotMActivity a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 1 && !MdotMActivity.c(a))
        {
            MdotMActivity.a(a, true);
            a.a();
        }
        return true;
    }

    (MdotMActivity mdotmactivity)
    {
        a = mdotmactivity;
        super();
    }
}
