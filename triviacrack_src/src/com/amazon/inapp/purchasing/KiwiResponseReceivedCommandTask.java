// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.venezia.command.SuccessResult;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiBaseCommandTask, Logger

final class KiwiResponseReceivedCommandTask extends KiwiBaseCommandTask
{

    private static final String COMMAND_NAME = "response_received";
    private static final String COMMAND_VERSION = "1.0";
    private static final String TAG = "KiwiResponseReceivedCommandTask";

    KiwiResponseReceivedCommandTask(String s)
    {
        super("response_received", "1.0", s);
    }

    protected void onSuccess(SuccessResult successresult)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiResponseReceivedCommandTask", "onSuccess");
        }
    }

    protected void sendFailedResponse()
    {
    }
}
