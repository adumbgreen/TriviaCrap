// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import java.lang.ref.WeakReference;

// Referenced classes of package com.amazon.inapp.purchasing:
//            GetUserIdResponse, ItemDataResponse, PurchaseResponse, PurchaseUpdatesResponse

public abstract class PurchasingObserver
{

    private WeakReference _contextReference;

    public PurchasingObserver(Context context)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Provided Context must not be null");
        } else
        {
            _contextReference = new WeakReference(context.getApplicationContext());
            return;
        }
    }

    final Context getContext()
    {
        return (Context)_contextReference.get();
    }

    public abstract void onGetUserIdResponse(GetUserIdResponse getuseridresponse);

    public abstract void onItemDataResponse(ItemDataResponse itemdataresponse);

    public abstract void onPurchaseResponse(PurchaseResponse purchaseresponse);

    public abstract void onPurchaseUpdatesResponse(PurchaseUpdatesResponse purchaseupdatesresponse);

    public abstract void onSdkAvailable(boolean flag);
}
