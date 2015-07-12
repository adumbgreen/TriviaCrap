// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting.dto;

import java.io.Serializable;

public class GiftItemDTO
    implements Serializable
{

    private GiftType type;

    public GiftItemDTO()
    {
    }

    public GiftType getType()
    {
        return type;
    }

    public void setType(GiftType gifttype)
    {
        type = gifttype;
    }
}
