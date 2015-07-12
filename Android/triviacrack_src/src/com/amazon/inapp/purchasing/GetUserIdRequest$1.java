// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            GetUserIdRequest, ImplementationFactory, RequestHandler

class this._cls0
    implements Runnable
{

    final GetUserIdRequest this$0;

    public void run()
    {
        ImplementationFactory.getRequestHandler().sendGetUserIdRequest(getRequestId());
    }

    ry()
    {
        this$0 = GetUserIdRequest.this;
        super();
    }
}
