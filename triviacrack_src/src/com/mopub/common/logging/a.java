// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.logging;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;

final class a extends Handler
{

    private static final Map a;

    private a()
    {
    }

    a(MoPubLog._cls1 _pcls1)
    {
        this();
    }

    public void close()
    {
    }

    public void flush()
    {
    }

    public void publish(LogRecord logrecord)
    {
        if (isLoggable(logrecord))
        {
            int i;
            String s;
            Throwable throwable;
            if (a.containsKey(logrecord.getLevel()))
            {
                i = ((Integer)a.get(logrecord.getLevel())).intValue();
            } else
            {
                i = 2;
            }
            s = (new StringBuilder()).append(logrecord.getMessage()).append("\n").toString();
            throwable = logrecord.getThrown();
            if (throwable != null)
            {
                s = (new StringBuilder()).append(s).append(Log.getStackTraceString(throwable)).toString();
            }
            Log.println(i, "MoPub", s);
        }
    }

    static 
    {
        a = new HashMap(7);
        a.put(Level.FINEST, Integer.valueOf(2));
        a.put(Level.FINER, Integer.valueOf(2));
        a.put(Level.FINE, Integer.valueOf(2));
        a.put(Level.CONFIG, Integer.valueOf(3));
        a.put(Level.INFO, Integer.valueOf(4));
        a.put(Level.WARNING, Integer.valueOf(5));
        a.put(Level.SEVERE, Integer.valueOf(6));
    }
}
