// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            SandboxRequestHandler, Logger, PurchasingManager

class val.location
    implements Runnable
{

    final SandboxRequestHandler this$0;
    final String val$location;
    final String val$sku;

    public void run()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running runnable for sentContentDonwloadRequest with sku ").append(val$sku).append(" and location ").append(val$location).toString());
        }
        if (PurchasingManager.getPurchasingObserver() == null);
    }

    _cls9()
    {
        this$0 = final_sandboxrequesthandler;
        val$sku = s;
        val$location = String.this;
        super();
    }
}
