// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class a
    implements android.view.oActivity._cls9
{

    final AdMarvelVideoActivity a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            LinearLayout linearlayout = (LinearLayout)a.findViewById(AdMarvelVideoActivity.b);
            if (AdMarvelVideoActivity.g(a) && linearlayout != null && AdMarvelVideoActivity.q(a) && a.i != d && a.i != e)
            {
                a.onUserInteraction();
            }
        }
        return false;
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
