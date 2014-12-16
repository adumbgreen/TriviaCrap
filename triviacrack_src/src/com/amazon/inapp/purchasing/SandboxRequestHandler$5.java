// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            SandboxRequestHandler, Logger, Offset, PurchasingManager, 
//            PurchasingObserver, PurchaseUpdatesResponse

class val.response
    implements Runnable
{

    final SandboxRequestHandler this$0;
    final Offset val$offset;
    final PurchaseUpdatesResponse val$response;

    public void run()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running runnable for sendPurchaseUpdatesRequest with offset ").append(val$offset.toString()).toString());
        }
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            purchasingobserver.onPurchaseUpdatesResponse(val$response);
        }
    }

    _cls9()
    {
        this$0 = final_sandboxrequesthandler;
        val$offset = offset1;
        val$response = PurchaseUpdatesResponse.this;
        super();
    }
}
