// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.amazon.inapp.purchasing:
//            ImplementationRegistry, RequestHandler, KiwiRequestHandler, ResponseHandler, 
//            KiwiResponseHandler, LogHandler, KiwiLogHandler

final class KiwiImplementationRegistry
    implements ImplementationRegistry
{

    private static final Map classMap;

    KiwiImplementationRegistry()
    {
    }

    public Class getImplementation(Class class1)
    {
        return (Class)classMap.get(class1);
    }

    static 
    {
        classMap = new HashMap();
        classMap.put(com/amazon/inapp/purchasing/RequestHandler, com/amazon/inapp/purchasing/KiwiRequestHandler);
        classMap.put(com/amazon/inapp/purchasing/ResponseHandler, com/amazon/inapp/purchasing/KiwiResponseHandler);
        classMap.put(com/amazon/inapp/purchasing/LogHandler, com/amazon/inapp/purchasing/KiwiLogHandler);
    }
}
