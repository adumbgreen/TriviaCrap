// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiGetItemDataRequestCommandTask, PurchasingManager, Logger, PurchasingObserver, 
//            ItemDataResponse

class val.itemDataResponse
    implements Runnable
{

    final KiwiGetItemDataRequestCommandTask this$0;
    final ItemDataResponse val$itemDataResponse;

    public void run()
    {
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiGetItemDataRequestCommandTask", (new StringBuilder()).append("Invoking onItemDataResponse with ").append(val$itemDataResponse).toString());
            }
            purchasingobserver.onItemDataResponse(val$itemDataResponse);
        }
    }

    ()
    {
        this$0 = final_kiwigetitemdatarequestcommandtask;
        val$itemDataResponse = ItemDataResponse.this;
        super();
    }
}
