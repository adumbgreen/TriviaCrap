// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.exceptions;

import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class SlotUncaughtExceptionHandler
    implements Thread.UncaughtExceptionHandler
{

    public static boolean ENABLED = false;
    public static final String EXCEPTION_MESSAGE = "Uncaught exception";
    private final Thread.UncaughtExceptionHandler mOldExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();

    public SlotUncaughtExceptionHandler()
    {
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        LSMLogger.LOGGER.log(Level.SEVERE, "Uncaught exception", throwable);
        if (mOldExceptionHandler != null)
        {
            mOldExceptionHandler.uncaughtException(thread, throwable);
        }
    }

    static 
    {
        ENABLED = true;
    }
}
