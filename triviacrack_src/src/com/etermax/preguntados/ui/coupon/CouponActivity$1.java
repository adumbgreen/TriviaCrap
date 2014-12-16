// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.coupon;

import android.support.v4.app.FragmentActivity;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.CodeDTO;
import com.etermax.preguntados.datasource.dto.CouponDTO;
import com.etermax.tools.a.c.b;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.coupon:
//            CouponActivity

class a extends a
{

    final String a;
    final CouponActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(FragmentActivity fragmentactivity, CouponDTO coupondto)
    {
        super.a(fragmentactivity, coupondto);
        if (coupondto != null)
        {
            com.etermax.preguntados.ui.coupon.CouponActivity.a(b, coupondto);
        }
    }

    protected void a(FragmentActivity fragmentactivity, Exception exception)
    {
        if (exception instanceof b)
        {
            com.etermax.preguntados.ui.coupon.CouponActivity.a(b, ((b)exception).c());
            b(false);
        }
        super.a(fragmentactivity, exception);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((FragmentActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((FragmentActivity)obj, (CouponDTO)obj1);
    }

    public CouponDTO b()
    {
        CodeDTO codedto = new CodeDTO();
        codedto.setToken(a);
        return b.a.a(codedto);
    }

    (CouponActivity couponactivity, String s, String s1)
    {
        b = couponactivity;
        a = s1;
        super(s);
    }
}
