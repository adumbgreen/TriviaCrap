// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiGetUserIdCommandTask, PurchasingManager, Logger, PurchasingObserver, 
//            GetUserIdResponse

class val.getUserIdResponse
    implements Runnable
{

    final KiwiGetUserIdCommandTask this$0;
    final GetUserIdResponse val$getUserIdResponse;

    public void run()
    {
        PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
        if (purchasingobserver != null)
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiGetUserIdCommandTask", (new StringBuilder()).append("Invoking onGetUserIdResponse with ").append(val$getUserIdResponse).toString());
            }
            purchasingobserver.onGetUserIdResponse(val$getUserIdResponse);
        }
    }

    ()
    {
        this$0 = final_kiwigetuseridcommandtask;
        val$getUserIdResponse = GetUserIdResponse.this;
        super();
    }
}
