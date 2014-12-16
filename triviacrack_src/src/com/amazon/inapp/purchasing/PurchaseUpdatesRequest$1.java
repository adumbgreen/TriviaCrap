// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            PurchaseUpdatesRequest, ImplementationFactory, RequestHandler

class this._cls0
    implements Runnable
{

    final PurchaseUpdatesRequest this$0;

    public void run()
    {
        ImplementationFactory.getRequestHandler().sendPurchaseUpdatesRequest(PurchaseUpdatesRequest.access$000(PurchaseUpdatesRequest.this), getRequestId());
    }

    ()
    {
        this$0 = PurchaseUpdatesRequest.this;
        super();
    }
}
