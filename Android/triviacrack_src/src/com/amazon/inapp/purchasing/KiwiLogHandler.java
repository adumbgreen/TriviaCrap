// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.android.framework.util.KiwiLogger;

// Referenced classes of package com.amazon.inapp.purchasing:
//            LogHandler

class KiwiLogHandler
    implements LogHandler
{

    private static KiwiLogger LOGGER = new KiwiLogger("In App Purchasing SDK - Production Mode");

    KiwiLogHandler()
    {
    }

    private static String buildLogMessage(String s, String s1)
    {
        return (new StringBuilder()).append(s).append(": ").append(s1).toString();
    }

    public void error(String s, String s1)
    {
        LOGGER.error(buildLogMessage(s, s1));
    }

    public boolean isErrorOn()
    {
        return KiwiLogger.ERROR_ON;
    }

    public boolean isTestOn()
    {
        return KiwiLogger.isTestEnabled();
    }

    public boolean isTraceOn()
    {
        return KiwiLogger.TRACE_ON;
    }

    public void test(String s, String s1)
    {
        LOGGER.test(buildLogMessage(s, s1));
    }

    public void trace(String s, String s1)
    {
        LOGGER.trace(buildLogMessage(s, s1));
    }

}
