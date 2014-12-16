// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Request, ImplementationFactory, RequestHandler

final class GetUserIdRequest extends Request
{

    GetUserIdRequest()
    {
    }

    Runnable getRunnable()
    {
        return new Runnable() {

            final GetUserIdRequest this$0;

            public void run()
            {
                ImplementationFactory.getRequestHandler().sendGetUserIdRequest(getRequestId());
            }

            
            {
                this$0 = GetUserIdRequest.this;
                super();
            }
        };
    }
}
