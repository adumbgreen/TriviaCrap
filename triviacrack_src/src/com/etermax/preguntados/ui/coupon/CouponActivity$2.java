// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.coupon;

import com.etermax.preguntados.datasource.dto.enums.CouponResponse;
import com.etermax.preguntados.datasource.dto.enums.RewardType;

// Referenced classes of package com.etermax.preguntados.ui.coupon:
//            CouponActivity

class Response
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[RewardType.values().length];
        try
        {
            b[RewardType.COINS.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b[RewardType.EXTRA_SHOTS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            b[RewardType.LIVES_LIMIT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            b[RewardType.LIVES.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            b[RewardType.UNLIMITED_LIVES.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        a = new int[CouponResponse.values().length];
        try
        {
            a[CouponResponse.CODE_VALID.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[CouponResponse.CODE_WITHOUT_PRIZE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            a[CouponResponse.CODE_VALID_IN_PROGRESS.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            a[CouponResponse.CODE_VALID_SERIAL_COMPLETED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8)
        {
            return;
        }
    }
}
