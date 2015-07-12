// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.coupon;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.widget.b.c;

// Referenced classes of package com.etermax.gamescommon.coupon:
//            b, c

public abstract class BaseCouponActivity extends BaseFragmentActivity
    implements b
{

    public BaseCouponActivity()
    {
    }

    protected Fragment a()
    {
        return new com.etermax.gamescommon.coupon.c();
    }

    protected void a(int i)
    {
        i;
        JVM INSTR tableswitch 5000 5005: default 40
    //                   5000 138
    //                   5001 81
    //                   5002 40
    //                   5003 40
    //                   5004 195
    //                   5005 81;
           goto _L1 _L2 _L3 _L1 _L1 _L4 _L3
_L1:
        c c1 = c.c(getString(o.invalid_coupon), getString(o.enter_coupon_again), getString(o.accept), null);
_L6:
        if (c1 != null)
        {
            c1.show(getSupportFragmentManager(), "error_dialog");
        }
        return;
_L3:
        c1 = c.c(getString(o.coupon_used), (new StringBuilder()).append(getString(o.coupon_used_txt)).append(" ").append(getString(o.get_more_coupons)).toString(), getString(o.accept), null);
        continue; /* Loop/switch isn't completed */
_L2:
        c1 = c.c(getString(o.coupon_expired), (new StringBuilder()).append(getString(o.coupon_expired_txt)).append(" ").append(getString(o.get_more_coupons)).toString(), getString(o.accept), null);
        continue; /* Loop/switch isn't completed */
_L4:
        c1 = c.c(getString(o.you_are_late), (new StringBuilder()).append(getString(o.no_more_prizes_coupon)).append(" ").append(getString(o.get_more_coupons)).toString(), getString(o.accept), null);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void b()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(k.coupon_activity_layout);
    }
}
