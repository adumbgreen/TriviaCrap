// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Request, Validator, ImplementationFactory, RequestHandler

final class ContentDownloadRequest extends Request
{

    private final String _location;
    private final String _sku;

    ContentDownloadRequest(String s, String s1)
    {
        Validator.validateNotNull(s, "sku");
        Validator.validateNotNull(s1, "location");
        _sku = s;
        _location = s1;
    }

    Runnable getRunnable()
    {
        return new Runnable() {

            final ContentDownloadRequest this$0;

            public void run()
            {
                ImplementationFactory.getRequestHandler().sendContentDownloadRequest(_sku, _location, getRequestId());
            }

            
            {
                this$0 = ContentDownloadRequest.this;
                super();
            }
        };
    }


}
