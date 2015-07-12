// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.android.Kiwi;
import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            RequestHandler, HandlerManager, Logger, HandlerAdapter, 
//            Offset, KiwiGetUserIdCommandTask, KiwiPurchaseRequestCommandTask, KiwiGetItemDataRequestCommandTask, 
//            KiwiPurchaseUpdatesCommandTask, KiwiResponseReceivedCommandTask

final class KiwiRequestHandler
    implements RequestHandler
{

    static final String HANDLER_THREAD_NAME = "KiwiRequestHandlerHandlerThread";
    private static final String TAG = "KiwiRequestHandler";
    private final HandlerAdapter _handler = HandlerManager.getHandlerAdapter("KiwiRequestHandlerHandlerThread");

    KiwiRequestHandler()
    {
    }

    public void sendContentDownloadRequest(String s, String s1, String s2)
    {
    }

    public void sendGetUserIdRequest(final String requestId)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiRequestHandler", "sendGetUserIdRequest");
        }
        Runnable runnable = new Runnable() {

            final KiwiRequestHandler this$0;
            final String val$requestId;

            public void run()
            {
                Kiwi.addCommandToCommandTaskPipeline(new KiwiGetUserIdCommandTask(requestId));
            }

            
            {
                this$0 = KiwiRequestHandler.this;
                requestId = s;
                super();
            }
        };
        _handler.post(runnable);
    }

    public void sendItemDataRequest(final Set skus, final String requestId)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiRequestHandler", "sendItemDataRequest");
        }
        Runnable runnable = new Runnable() {

            final KiwiRequestHandler this$0;
            final String val$requestId;
            final Set val$skus;

            public void run()
            {
                Kiwi.addCommandToCommandTaskPipeline(new KiwiGetItemDataRequestCommandTask(skus, requestId));
            }

            
            {
                this$0 = KiwiRequestHandler.this;
                skus = set;
                requestId = s;
                super();
            }
        };
        _handler.post(runnable);
    }

    public void sendPurchaseRequest(final String sku, final String requestId)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiRequestHandler", "sendPurchaseRequest");
        }
        Runnable runnable = new Runnable() {

            final KiwiRequestHandler this$0;
            final String val$requestId;
            final String val$sku;

            public void run()
            {
                Kiwi.addCommandToCommandTaskPipeline(new KiwiPurchaseRequestCommandTask(sku, requestId));
            }

            
            {
                this$0 = KiwiRequestHandler.this;
                sku = s;
                requestId = s1;
                super();
            }
        };
        _handler.post(runnable);
    }

    public void sendPurchaseResponseReceivedRequest(final String requestId)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiRequestHandler", "sendPurchaseResponseReceivedRequest");
        }
        Runnable runnable = new Runnable() {

            final KiwiRequestHandler this$0;
            final String val$requestId;

            public void run()
            {
                Kiwi.addCommandToCommandTaskPipeline(new KiwiResponseReceivedCommandTask(requestId));
            }

            
            {
                this$0 = KiwiRequestHandler.this;
                requestId = s;
                super();
            }
        };
        _handler.post(runnable);
    }

    public void sendPurchaseUpdatesRequest(final Offset offset, final String requestId)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiRequestHandler", "sendPurchaseUpdatesRequest");
        }
        Runnable runnable = new Runnable() {

            final KiwiRequestHandler this$0;
            final Offset val$offset;
            final String val$requestId;

            public void run()
            {
                Kiwi.addCommandToCommandTaskPipeline(new KiwiPurchaseUpdatesCommandTask(offset, requestId));
            }

            
            {
                this$0 = KiwiRequestHandler.this;
                offset = offset1;
                requestId = s;
                super();
            }
        };
        _handler.post(runnable);
    }
}
