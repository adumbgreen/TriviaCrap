// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            SandboxResponseHandler, Logger, PurchaseResponse, PurchasingManager, 
//            PurchasingObserver

class val.response
    implements Runnable
{

    final SandboxResponseHandler this$0;
    final PurchaseResponse val$response;

    public void run()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxResponseHandler", (new StringBuilder()).append("Running Runnable for purchaseResponse with requestId: ").append(val$response.getRequestId()).toString());
        }
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            purchasingobserver.onPurchaseResponse(val$response);
        }
    }

    ()
    {
        this$0 = final_sandboxresponsehandler;
        val$response = PurchaseResponse.this;
        super();
    }
}
