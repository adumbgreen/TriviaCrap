// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            HandlerManager, HandlerAdapter, PurchasingObserver, GetUserIdRequest, 
//            ItemDataRequest, PurchaseRequest, PurchaseUpdatesRequest, Request, 
//            Logger, Offset, ImplementationFactory

public final class PurchasingManager
{

    public static final String BUILD_ID = "1.0.3";
    private static final HandlerAdapter HANDLER;
    static final String HANDLER_THREAD_NAME = "PurchasingManagerHandlerThread";
    public static final int ITEM_DATA_REQUEST_MAX_SKUS = 100;
    private static final String TAG = "PurchasingManager";
    private static PurchasingObserver registeredPurchasingObserver;

    private PurchasingManager()
    {
    }

    private static void checkObserverRegistered()
    {
        if (registeredPurchasingObserver == null)
        {
            throw new IllegalStateException("You must register a PurchasingObserver before invoking this operation");
        } else
        {
            return;
        }
    }

    static Context getObserverContext()
    {
        if (registeredPurchasingObserver == null)
        {
            return null;
        } else
        {
            return registeredPurchasingObserver.getContext();
        }
    }

    static PurchasingObserver getPurchasingObserver()
    {
        return registeredPurchasingObserver;
    }

    public static String initiateGetUserIdRequest()
    {
        checkObserverRegistered();
        return initiateRequest(new GetUserIdRequest());
    }

    public static String initiateItemDataRequest(Set set)
    {
        checkObserverRegistered();
        return initiateRequest(new ItemDataRequest(new HashSet(set)));
    }

    public static String initiatePurchaseRequest(String s)
    {
        checkObserverRegistered();
        return initiateRequest(new PurchaseRequest(s));
    }

    public static String initiatePurchaseUpdatesRequest(Offset offset)
    {
        checkObserverRegistered();
        return initiateRequest(new PurchaseUpdatesRequest(offset));
    }

    private static String initiateRequest(Request request)
    {
        HANDLER.post(request.getRunnable());
        return request.getRequestId();
    }

    public static void registerObserver(final PurchasingObserver purchasingObserver)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("PurchasingManager", (new StringBuilder()).append("PurchasingObserver registered: ").append(purchasingObserver).toString());
        }
        if (purchasingObserver == null)
        {
            throw new IllegalArgumentException("Provided PurchasingObserver must not be null");
        } else
        {
            registeredPurchasingObserver = purchasingObserver;
            Runnable runnable = new Runnable() {

                final PurchasingObserver val$purchasingObserver;

                public void run()
                {
                    Runnable runnable1 = new Runnable() {

                        final _cls2 this$0;

                        public void run()
                        {
                            purchasingObserver.onSdkAvailable(ImplementationFactory.isSandboxMode());
                        }

            
            {
                this$0 = _cls2.this;
                super();
            }
                    };
                    (new Handler(PurchasingManager.getObserverContext().getMainLooper())).post(runnable1);
                }

            
            {
                purchasingObserver = purchasingobserver;
                super();
            }
            };
            HANDLER.post(runnable);
            return;
        }
    }

    static 
    {
        HANDLER = HandlerManager.getHandlerAdapter("PurchasingManagerHandlerThread");
        Runnable runnable = new Runnable() {

            public void run()
            {
                Log.i("PurchasingManager", "Purchasing Framework initialization complete. Build ID 1.0.3");
            }

        };
        HANDLER.post(runnable);
    }
}
