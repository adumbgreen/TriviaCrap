// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiPurchaseUpdatesCommandTask, PurchasingManager, Logger, PurchasingObserver, 
//            PurchaseUpdatesResponse

class val.purchaseUpdatesResponse
    implements Runnable
{

    final KiwiPurchaseUpdatesCommandTask this$0;
    final PurchaseUpdatesResponse val$purchaseUpdatesResponse;

    public void run()
    {
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiPurchaseUpdatesCommandTask", (new StringBuilder()).append("Invoking onPurchaseUpdatesResponse with ").append(val$purchaseUpdatesResponse).toString());
            }
            purchasingobserver.onPurchaseUpdatesResponse(val$purchaseUpdatesResponse);
        }
    }

    ()
    {
        this$0 = final_kiwipurchaseupdatescommandtask;
        val$purchaseUpdatesResponse = PurchaseUpdatesResponse.this;
        super();
    }
}
