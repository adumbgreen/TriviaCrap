// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            ContentDownloadRequest, ImplementationFactory, RequestHandler

class this._cls0
    implements Runnable
{

    final ContentDownloadRequest this$0;

    public void run()
    {
        ImplementationFactory.getRequestHandler().sendContentDownloadRequest(ContentDownloadRequest.access$000(ContentDownloadRequest.this), ContentDownloadRequest.access$100(ContentDownloadRequest.this), getRequestId());
    }

    ()
    {
        this$0 = ContentDownloadRequest.this;
        super();
    }
}
