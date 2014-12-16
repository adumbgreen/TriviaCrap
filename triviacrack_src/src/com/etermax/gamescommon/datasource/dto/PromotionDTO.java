// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import com.etermax.gamescommon.promotion.Promotion;
import java.io.Serializable;

public class PromotionDTO
    implements Serializable
{

    private com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType app_item_type;
    private Promotion id;
    private long remaining_time;

    public com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType getAppItemType()
    {
        return app_item_type;
    }

    public Promotion getId()
    {
        return id;
    }

    public long getRemainingTime()
    {
        return remaining_time;
    }
}
