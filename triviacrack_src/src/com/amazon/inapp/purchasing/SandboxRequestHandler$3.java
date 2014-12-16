// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            SandboxRequestHandler, Logger, PurchasingManager, PurchasingObserver, 
//            ItemDataResponse

class val.response
    implements Runnable
{

    final SandboxRequestHandler this$0;
    final ItemDataResponse val$response;
    final Set val$skus;

    public void run()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running Runnable for sendItemDataRequest with SKUs: ").append(val$skus).toString());
        }
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            purchasingobserver.onItemDataResponse(val$response);
        }
    }

    _cls9()
    {
        this$0 = final_sandboxrequesthandler;
        val$skus = set;
        val$response = ItemDataResponse.this;
        super();
    }
}
