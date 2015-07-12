// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.coupon;

import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.etermax.preguntados.ui.coupon:
//            CouponActivity_

public class a
{

    private Context a;
    private final Intent b;

    public a(Context context)
    {
        a = context;
        b = new Intent(context, com/etermax/preguntados/ui/coupon/CouponActivity_);
    }

    public Intent a()
    {
        return b;
    }
}
