// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.View;

// Referenced classes of package com.etermax.gamescommon.promotion:
//            Promotion

public abstract class BasePromotion
{

    private Promotion id;
    private com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType itemType;
    private long receivedTime;
    private long remainingTime;

    public BasePromotion(Promotion promotion, com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType appitemtype, long l, long l1)
    {
        id = promotion;
        itemType = appitemtype;
        receivedTime = l;
        remainingTime = l1;
    }

    public abstract View getDashboardView(Context context);

    public Promotion getId()
    {
        return id;
    }

    public com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType getItemType()
    {
        return itemType;
    }

    public abstract Fragment getPromoBuyFragment();

    public long getRemainingTime()
    {
        return 1000L * remainingTime - (System.currentTimeMillis() - receivedTime);
    }
}
