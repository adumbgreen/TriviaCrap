// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class CouponResponse extends Enum
{

    private static final CouponResponse $VALUES[];
    public static final CouponResponse CODE_VALID;
    public static final CouponResponse CODE_VALID_IN_PROGRESS;
    public static final CouponResponse CODE_VALID_SERIAL_COMPLETED;
    public static final CouponResponse CODE_WITHOUT_PRIZE;

    private CouponResponse(String s, int i)
    {
        super(s, i);
    }

    public static CouponResponse valueOf(String s)
    {
        return (CouponResponse)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/CouponResponse, s);
    }

    public static CouponResponse[] values()
    {
        return (CouponResponse[])$VALUES.clone();
    }

    static 
    {
        CODE_WITHOUT_PRIZE = new CouponResponse("CODE_WITHOUT_PRIZE", 0);
        CODE_VALID_IN_PROGRESS = new CouponResponse("CODE_VALID_IN_PROGRESS", 1);
        CODE_VALID_SERIAL_COMPLETED = new CouponResponse("CODE_VALID_SERIAL_COMPLETED", 2);
        CODE_VALID = new CouponResponse("CODE_VALID", 3);
        CouponResponse acouponresponse[] = new CouponResponse[4];
        acouponresponse[0] = CODE_WITHOUT_PRIZE;
        acouponresponse[1] = CODE_VALID_IN_PROGRESS;
        acouponresponse[2] = CODE_VALID_SERIAL_COMPLETED;
        acouponresponse[3] = CODE_VALID;
        $VALUES = acouponresponse;
    }
}
