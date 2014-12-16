// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Request, Validator, ImplementationFactory, RequestHandler

class PurchaseRequest extends Request
{

    private final String _sku;

    PurchaseRequest(String s)
    {
        Validator.validateNotNull(s, "sku");
        _sku = s;
    }

    Runnable getRunnable()
    {
        return new Runnable() {

            final PurchaseRequest this$0;

            public void run()
            {
                ImplementationFactory.getRequestHandler().sendPurchaseRequest(_sku, getRequestId());
            }

            
            {
                this$0 = PurchaseRequest.this;
                super();
            }
        };
    }

}
