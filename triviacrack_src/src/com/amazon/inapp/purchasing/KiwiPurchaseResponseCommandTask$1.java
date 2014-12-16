// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiPurchaseResponseCommandTask, PurchasingManager, Logger, PurchasingObserver, 
//            ImplementationFactory, RequestHandler, PurchaseResponse

class val.purchaseResponse
    implements Runnable
{

    final KiwiPurchaseResponseCommandTask this$0;
    final PurchaseResponse val$purchaseResponse;

    public void run()
    {
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("About to invoke onPurchaseResponse with PurchasingObserver: ").append(purchasingobserver).toString());
        }
        if (purchasingobserver != null)
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("Invoking onPurchaseResponse with ").append(val$purchaseResponse).toString());
            }
            purchasingobserver.onPurchaseResponse(val$purchaseResponse);
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiPurchaseResponseCommandTask", "No exceptions were thrown when invoking onPurchaseResponse");
            }
            ImplementationFactory.getRequestHandler().sendPurchaseResponseReceivedRequest(getRequestId());
        }
    }

    ()
    {
        this$0 = final_kiwipurchaseresponsecommandtask;
        val$purchaseResponse = PurchaseResponse.this;
        super();
    }
}
