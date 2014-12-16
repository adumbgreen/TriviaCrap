// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import android.util.Log;
import com.lifestreet.android.lsmsdk.ErrorReporter;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

public final class LSMLogger extends Logger
{

    public static final Logger LOGGER;

    protected LSMLogger(String s, String s1)
    {
        super(s, s1);
    }

    private String formatMessage(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        StackTraceElement astacktraceelement[] = (new Throwable()).getStackTrace();
        if (astacktraceelement != null && astacktraceelement.length > 3)
        {
            StackTraceElement stacktraceelement = astacktraceelement[3];
            String s1 = stacktraceelement.getClassName();
            if (s1 != null && s1.contains("."))
            {
                s1 = s1.substring(1 + s1.lastIndexOf("."));
            }
            stringbuilder.append(s1).append(" (").append(stacktraceelement.getFileName()).append(":").append(stacktraceelement.getLineNumber()).append("): ");
        }
        return stringbuilder.append(s).toString();
    }

    public static Logger getLogger(String s)
    {
        LogManager logmanager = LogManager.getLogManager();
        Object obj = logmanager.getLogger(s);
        if (obj == null)
        {
            obj = new LSMLogger(s, null);
            ((Logger) (obj)).addHandler(new Handler() {

                public void close()
                {
                }

                public void flush()
                {
                }

                public void publish(LogRecord logrecord)
                {
                    int i = logrecord.getLevel().intValue();
                    String s1 = logrecord.getLoggerName();
                    if (i == Level.CONFIG.intValue())
                    {
                        Log.i(s1, logrecord.getMessage());
                    } else
                    {
                        if (i == Level.FINE.intValue() || i == Level.FINER.intValue())
                        {
                            Log.d(s1, logrecord.getMessage());
                            return;
                        }
                        if (i == Level.FINEST.intValue())
                        {
                            Log.v(s1, logrecord.getMessage());
                            return;
                        }
                    }
                }

            });
            logmanager.addLogger(((Logger) (obj)));
        }
        return ((Logger) (obj));
    }

    public void log(Level level, String s)
    {
        super.log(level, formatMessage(s));
    }

    public void log(Level level, String s, Throwable throwable)
    {
        if (level.intValue() == Level.SEVERE.intValue())
        {
            (new ErrorReporter(throwable, s)).report();
        }
        super.log(level, formatMessage(s), throwable);
    }

    static 
    {
        LOGGER = getLogger("LSMSDK");
        LOGGER.setLevel(Level.WARNING);
    }
}
