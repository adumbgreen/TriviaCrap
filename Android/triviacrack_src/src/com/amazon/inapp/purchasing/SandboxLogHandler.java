// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.util.Log;

// Referenced classes of package com.amazon.inapp.purchasing:
//            LogHandler

class SandboxLogHandler
    implements LogHandler
{

    private static final boolean ERROR_ON = true;
    private static final boolean TEST_ON = true;
    private static final boolean TRACE_ON = true;

    SandboxLogHandler()
    {
    }

    private static String buildLogMessage(String s)
    {
        return (new StringBuilder()).append("In App Purchasing SDK - Sandbox Mode: ").append(s).toString();
    }

    public void error(String s, String s1)
    {
        Log.e(s, buildLogMessage(s1));
    }

    public boolean isErrorOn()
    {
        return true;
    }

    public boolean isTestOn()
    {
        return true;
    }

    public boolean isTraceOn()
    {
        return true;
    }

    public void test(String s, String s1)
    {
        Log.v(s, buildLogMessage(s1));
    }

    public void trace(String s, String s1)
    {
        Log.d(s, buildLogMessage(s1));
    }
}
