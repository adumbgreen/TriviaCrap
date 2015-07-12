// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.view.MotionEvent;
import android.view.View;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.vast:
//            VastInterstitialActivity

class a
    implements android.view.ctivity._cls4
{

    final VastInterstitialActivity a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        d.b(this, (new StringBuilder("onTouch :: ")).append(i).toString());
        if (i == 0 && !com.mdotm.android.vast.VastInterstitialActivity.d(a))
        {
            VastInterstitialActivity.a(a, true);
            VastInterstitialActivity.e(a);
        }
        return false;
    }

    (VastInterstitialActivity vastinterstitialactivity)
    {
        a = vastinterstitialactivity;
        super();
    }
}
