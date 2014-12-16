// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiPurchaseRequestCommandTask, PurchasingManager, PurchaseResponse, Logger, 
//            PurchasingObserver

class this._cls0
    implements Runnable
{

    final KiwiPurchaseRequestCommandTask this$0;

    public void run()
    {
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        PurchaseResponse purchaseresponse = new PurchaseResponse(getRequestId(), null, null, tatus.FAILED);
        if (purchasingobserver != null)
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiPurchaseRequestCommandTask", (new StringBuilder()).append("Invoking onPurchaseResponse with ").append(purchaseresponse).toString());
            }
            purchasingobserver.onPurchaseResponse(purchaseresponse);
        }
    }

    tatus()
    {
        this$0 = KiwiPurchaseRequestCommandTask.this;
        super();
    }
}
