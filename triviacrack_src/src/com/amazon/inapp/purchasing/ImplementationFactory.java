// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            SandboxImplementationRegistry, KiwiImplementationRegistry, ImplementationRegistry, LogHandler, 
//            RequestHandler, ResponseHandler

final class ImplementationFactory
{

    private static volatile ImplementationRegistry IMPLEMENTATION_REGISTRY;
    private static volatile boolean IS_SANDBOX_MODE;
    private static volatile boolean IS_SANDBOX_MODE_CHECKED;
    private static volatile LogHandler LOG_HANDLER_INSTANCE;
    private static volatile RequestHandler REQUEST_HANDLER_INSTANCE;
    private static volatile ResponseHandler RESPONSE_HANDLER_INSTANCE;

    ImplementationFactory()
    {
    }

    private static ImplementationRegistry getImplementationRegistry()
    {
        if (IMPLEMENTATION_REGISTRY != null) goto _L2; else goto _L1
_L1:
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorenter ;
        if (IMPLEMENTATION_REGISTRY == null)
        {
            if (!isSandboxMode())
            {
                break MISSING_BLOCK_LABEL_38;
            }
            IMPLEMENTATION_REGISTRY = new SandboxImplementationRegistry();
        }
_L3:
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorexit ;
_L2:
        return IMPLEMENTATION_REGISTRY;
        IMPLEMENTATION_REGISTRY = new KiwiImplementationRegistry();
          goto _L3
        Exception exception;
        exception;
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static Object getInstance(Class class1, Object obj)
    {
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorenter ;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        Object obj1 = getImplementationRegistry().getImplementation(class1).newInstance();
        obj = obj1;
_L2:
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
        return obj;
    }

    static LogHandler getLogHandler()
    {
        if (LOG_HANDLER_INSTANCE != null)
        {
            return LOG_HANDLER_INSTANCE;
        } else
        {
            return (LogHandler)getInstance(com/amazon/inapp/purchasing/LogHandler, LOG_HANDLER_INSTANCE);
        }
    }

    static RequestHandler getRequestHandler()
    {
        if (REQUEST_HANDLER_INSTANCE != null)
        {
            return REQUEST_HANDLER_INSTANCE;
        } else
        {
            return (RequestHandler)getInstance(com/amazon/inapp/purchasing/RequestHandler, REQUEST_HANDLER_INSTANCE);
        }
    }

    static ResponseHandler getResponseHandler()
    {
        if (RESPONSE_HANDLER_INSTANCE != null)
        {
            return RESPONSE_HANDLER_INSTANCE;
        } else
        {
            return (ResponseHandler)getInstance(com/amazon/inapp/purchasing/ResponseHandler, RESPONSE_HANDLER_INSTANCE);
        }
    }

    static boolean isSandboxMode()
    {
        if (IS_SANDBOX_MODE_CHECKED)
        {
            return IS_SANDBOX_MODE;
        }
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorenter ;
        boolean flag;
        if (!IS_SANDBOX_MODE_CHECKED)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        flag = IS_SANDBOX_MODE;
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorexit ;
        throw exception;
        com/amazon/inapp/purchasing/ImplementationFactory.getClassLoader().loadClass("com.amazon.android.Kiwi");
        IS_SANDBOX_MODE = false;
_L1:
        IS_SANDBOX_MODE_CHECKED = true;
        com/amazon/inapp/purchasing/ImplementationFactory;
        JVM INSTR monitorexit ;
        return IS_SANDBOX_MODE;
        Throwable throwable;
        throwable;
        IS_SANDBOX_MODE = true;
          goto _L1
    }
}
