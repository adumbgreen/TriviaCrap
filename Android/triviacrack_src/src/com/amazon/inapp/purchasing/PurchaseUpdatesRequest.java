// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Request, Validator, Offset, ImplementationFactory, 
//            RequestHandler

final class PurchaseUpdatesRequest extends Request
{

    private final Offset _offset;

    PurchaseUpdatesRequest(Offset offset)
    {
        Validator.validateNotNull(offset, "offset");
        _offset = offset;
    }

    Runnable getRunnable()
    {
        return new Runnable() {

            final PurchaseUpdatesRequest this$0;

            public void run()
            {
                ImplementationFactory.getRequestHandler().sendPurchaseUpdatesRequest(_offset, getRequestId());
            }

            
            {
                this$0 = PurchaseUpdatesRequest.this;
                super();
            }
        };
    }

}
