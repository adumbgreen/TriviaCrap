// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;

// Referenced classes of package com.amazon.inapp.purchasing:
//            PurchasingObserver, GetUserIdResponse, ItemDataResponse, PurchaseResponse, 
//            PurchaseUpdatesResponse

public class BasePurchasingObserver extends PurchasingObserver
{

    public BasePurchasingObserver(Context context)
    {
        super(context);
    }

    public void onGetUserIdResponse(GetUserIdResponse getuseridresponse)
    {
    }

    public void onItemDataResponse(ItemDataResponse itemdataresponse)
    {
    }

    public void onPurchaseResponse(PurchaseResponse purchaseresponse)
    {
    }

    public void onPurchaseUpdatesResponse(PurchaseUpdatesResponse purchaseupdatesresponse)
    {
    }

    public void onSdkAvailable(boolean flag)
    {
    }
}
