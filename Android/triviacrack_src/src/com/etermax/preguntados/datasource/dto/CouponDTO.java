// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.CouponResponse;
import com.etermax.preguntados.datasource.dto.enums.RewardType;
import java.io.Serializable;

public class CouponDTO
    implements Serializable
{

    private String campaign_name;
    private CouponResponse code_response;
    private int current_seriated_code;
    private int reward_quantity;
    private RewardType reward_type;
    private int total_seriated_codes;

    public CouponDTO()
    {
    }

    public String getCampaignName()
    {
        return campaign_name;
    }

    public CouponResponse getCodeResponse()
    {
        return code_response;
    }

    public int getCurrentSeriatedCode()
    {
        return current_seriated_code;
    }

    public int getRewardQuantity()
    {
        return reward_quantity;
    }

    public RewardType getRewardType()
    {
        return reward_type;
    }

    public int getTotalSeriatedCode()
    {
        return total_seriated_codes;
    }
}
