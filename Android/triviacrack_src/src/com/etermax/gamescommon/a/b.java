// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.a;

import android.content.Context;
import android.util.Log;
import com.amazon.inapp.purchasing.BasePurchasingObserver;
import com.amazon.inapp.purchasing.GetUserIdResponse;
import com.amazon.inapp.purchasing.Item;
import com.amazon.inapp.purchasing.ItemDataResponse;
import com.amazon.inapp.purchasing.Offset;
import com.amazon.inapp.purchasing.PurchaseResponse;
import com.amazon.inapp.purchasing.PurchaseUpdatesResponse;
import com.amazon.inapp.purchasing.PurchasingManager;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.etermax.gamescommon.a:
//            a

public class b extends BasePurchasingObserver
{

    public a a;

    public b(Context context, a a1)
    {
        super(context);
        a = a1;
    }

    public void onGetUserIdResponse(GetUserIdResponse getuseridresponse)
    {
        if (getuseridresponse.getUserIdRequestStatus() == com.amazon.inapp.purchasing.GetUserIdResponse.GetUserIdRequestStatus.SUCCESSFUL)
        {
            PurchasingManager.initiatePurchaseUpdatesRequest(Offset.BEGINNING);
        }
    }

    public void onItemDataResponse(ItemDataResponse itemdataresponse)
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.amazon.inapp.purchasing.ItemDataResponse.ItemDataRequestStatus.values().length];
                try
                {
                    a[com.amazon.inapp.purchasing.ItemDataResponse.ItemDataRequestStatus.SUCCESSFUL_WITH_UNAVAILABLE_SKUS.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.amazon.inapp.purchasing.ItemDataResponse.ItemDataRequestStatus.SUCCESSFUL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.amazon.inapp.purchasing.ItemDataResponse.ItemDataRequestStatus.FAILED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls1.a[itemdataresponse.getItemDataRequestStatus().ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 37
    //                   2 99
    //                   3 215;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        String s;
        for (Iterator iterator1 = itemdataresponse.getUnavailableSkus().iterator(); iterator1.hasNext(); Log.v("AmazonPurchase", (new StringBuilder()).append("Unavailable SKU:").append(s).toString()))
        {
            s = (String)iterator1.next();
        }

_L3:
        Map map = itemdataresponse.getItemData();
        Iterator iterator = map.keySet().iterator();
        while (iterator.hasNext()) 
        {
            Item item = (Item)map.get((String)iterator.next());
            Object aobj[] = new Object[5];
            aobj[0] = item.getTitle();
            aobj[1] = item.getItemType();
            aobj[2] = item.getSku();
            aobj[3] = item.getPrice();
            aobj[4] = item.getDescription();
            Log.v("AmazonPurchase", String.format("Item: %s\n Type: %s\n SKU: %s\n Price: %s\n Description: %s\n", aobj));
        }
          goto _L1
_L4:
        Log.v("AmazonPurchase", "ItemDataRequestStatus: FAILED");
        return;
    }

    public void onPurchaseResponse(PurchaseResponse purchaseresponse)
    {
        a.a(purchaseresponse);
    }

    public void onPurchaseUpdatesResponse(PurchaseUpdatesResponse purchaseupdatesresponse)
    {
    }

    public void onSdkAvailable(boolean flag)
    {
        a.a();
    }
}
