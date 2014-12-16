// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;

import android.os.CountDownTimer;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

// Referenced classes of package com.etermax.gamescommon.promotion:
//            BasePromotionFragment

class this._cls0 extends CountDownTimer
{

    final BasePromotionFragment this$0;

    public void onFinish()
    {
        onTimerFinish();
        getActivity().getSupportFragmentManager().beginTransaction().remove(BasePromotionFragment.this).commit();
    }

    public void onTick(long l)
    {
        onTimerTick(l);
    }

    (long l, long l1)
    {
        this$0 = BasePromotionFragment.this;
        super(l, l1);
    }
}
