// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            SandboxResponseHandler, Logger, ItemDataResponse, PurchasingManager, 
//            PurchasingObserver

class val.response
    implements Runnable
{

    final SandboxResponseHandler this$0;
    final ItemDataResponse val$response;

    public void run()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxResponseHandler", (new StringBuilder()).append("Running Runnable for itemDataResponse with requestId: ").append(val$response.getRequestId()).toString());
        }
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            purchasingobserver.onItemDataResponse(val$response);
        }
    }

    ()
    {
        this$0 = final_sandboxresponsehandler;
        val$response = ItemDataResponse.this;
        super();
    }
}
