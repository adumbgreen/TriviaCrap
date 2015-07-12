// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            SandboxRequestHandler, Logger, PurchasingManager, PurchasingObserver, 
//            PurchaseResponse

class val.response
    implements Runnable
{

    final SandboxRequestHandler this$0;
    final String val$requestId;
    final PurchaseResponse val$response;
    final String val$sku;

    public void run()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running Runnable for sendPurchaseRequest with requestId: ").append(val$requestId).append(" sku: ").append(val$sku).toString());
        }
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            purchasingobserver.onPurchaseResponse(val$response);
        }
    }

    _cls9()
    {
        this$0 = final_sandboxrequesthandler;
        val$requestId = s;
        val$sku = s1;
        val$response = PurchaseResponse.this;
        super();
    }
}
