// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import android.util.Log;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;

// Referenced classes of package com.lifestreet.android.lsmsdk.commons:
//            LSMLogger

final class  extends Handler
{

    public void close()
    {
    }

    public void flush()
    {
    }

    public void publish(LogRecord logrecord)
    {
        int i = logrecord.getLevel().intValue();
        String s = logrecord.getLoggerName();
        if (i == Level.CONFIG.intValue())
        {
            Log.i(s, logrecord.getMessage());
        } else
        {
            if (i == Level.FINE.intValue() || i == Level.FINER.intValue())
            {
                Log.d(s, logrecord.getMessage());
                return;
            }
            if (i == Level.FINEST.intValue())
            {
                Log.v(s, logrecord.getMessage());
                return;
            }
        }
    }

    ()
    {
    }
}
