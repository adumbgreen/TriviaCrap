// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.amazon.inapp.purchasing:
//            HandlerAdapter, PurchasingManager

class HandlerManager
{

    private static volatile Map HANDLER_ADAPTERS = new HashMap();
    private static volatile HandlerAdapter MAIN_HANDLER_ADAPTER = null;

    HandlerManager()
    {
    }

    static HandlerAdapter getHandlerAdapter(String s)
    {
        if (HANDLER_ADAPTERS.containsKey(s)) goto _L2; else goto _L1
_L1:
        com/amazon/inapp/purchasing/HandlerManager;
        JVM INSTR monitorenter ;
        if (!HANDLER_ADAPTERS.containsKey(s))
        {
            HandlerThread handlerthread = new HandlerThread(s);
            handlerthread.start();
            HandlerAdapter handleradapter = new HandlerAdapter(new Handler(handlerthread.getLooper()));
            HANDLER_ADAPTERS.put(s, handleradapter);
        }
        com/amazon/inapp/purchasing/HandlerManager;
        JVM INSTR monitorexit ;
_L2:
        return (HandlerAdapter)HANDLER_ADAPTERS.get(s);
        Exception exception;
        exception;
        com/amazon/inapp/purchasing/HandlerManager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static HandlerAdapter getMainHandlerAdapter()
    {
        if (MAIN_HANDLER_ADAPTER != null) goto _L2; else goto _L1
_L1:
        com/amazon/inapp/purchasing/HandlerManager;
        JVM INSTR monitorenter ;
        if (MAIN_HANDLER_ADAPTER == null)
        {
            MAIN_HANDLER_ADAPTER = new HandlerAdapter(new Handler(PurchasingManager.getObserverContext().getMainLooper()));
        }
        com/amazon/inapp/purchasing/HandlerManager;
        JVM INSTR monitorexit ;
_L2:
        return MAIN_HANDLER_ADAPTER;
        Exception exception;
        exception;
        com/amazon/inapp/purchasing/HandlerManager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void setHandlerAdapter(String s, HandlerAdapter handleradapter)
    {
        HANDLER_ADAPTERS.put(s, handleradapter);
    }

    static void setMainHandlerAdapter(HandlerAdapter handleradapter)
    {
        MAIN_HANDLER_ADAPTER = handleradapter;
    }

}
