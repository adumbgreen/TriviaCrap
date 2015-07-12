// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.amazon.inapp.purchasing:
//            ImplementationRegistry, RequestHandler, SandboxRequestHandler, ResponseHandler, 
//            SandboxResponseHandler, LogHandler, SandboxLogHandler

final class SandboxImplementationRegistry
    implements ImplementationRegistry
{

    private static final Map classMap;

    SandboxImplementationRegistry()
    {
    }

    public Class getImplementation(Class class1)
    {
        return (Class)classMap.get(class1);
    }

    static 
    {
        classMap = new HashMap();
        classMap.put(com/amazon/inapp/purchasing/RequestHandler, com/amazon/inapp/purchasing/SandboxRequestHandler);
        classMap.put(com/amazon/inapp/purchasing/ResponseHandler, com/amazon/inapp/purchasing/SandboxResponseHandler);
        classMap.put(com/amazon/inapp/purchasing/LogHandler, com/amazon/inapp/purchasing/SandboxLogHandler);
    }
}
