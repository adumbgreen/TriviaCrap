// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            ImplementationFactory, LogHandler

class Logger
{

    Logger()
    {
    }

    static void error(String s, String s1)
    {
        if (isErrorOn())
        {
            ImplementationFactory.getLogHandler().error(s, s1);
        }
    }

    static boolean isErrorOn()
    {
        return ImplementationFactory.getLogHandler().isErrorOn();
    }

    static boolean isTestOn()
    {
        return ImplementationFactory.getLogHandler().isTestOn();
    }

    static boolean isTraceOn()
    {
        return ImplementationFactory.getLogHandler().isTraceOn();
    }

    static void test(String s, String s1)
    {
        if (isTestOn())
        {
            ImplementationFactory.getLogHandler().test(s, s1);
        }
    }

    static void trace(String s, String s1)
    {
        if (isTraceOn())
        {
            ImplementationFactory.getLogHandler().trace(s, s1);
        }
    }
}
