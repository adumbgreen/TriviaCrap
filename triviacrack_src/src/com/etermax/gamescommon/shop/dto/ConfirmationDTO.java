// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop.dto;


public class ConfirmationDTO
{

    private boolean duplicate;
    private String orderId;

    public ConfirmationDTO()
    {
    }

    public String getOrderId()
    {
        return orderId;
    }

    public boolean isDuplicate()
    {
        return duplicate;
    }
}
