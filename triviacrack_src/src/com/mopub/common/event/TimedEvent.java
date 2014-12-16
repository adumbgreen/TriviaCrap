// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;

import com.mopub.common.ClientMetadata;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.mopub.common.event:
//            BaseEvent, c, b

public class TimedEvent extends BaseEvent
{

    public static final int SC_NOT_RELEVANT = 0;
    public static final int SC_NO_RESPONSE = -1;
    private final long a = System.nanoTime();
    private c b;
    private final b c;
    private long d;
    private int e;

    TimedEvent(BaseEvent.Type type, String s, ClientMetadata clientmetadata, b b1)
    {
        super(type, s, clientmetadata);
        b = c.WAITING;
        c = b1;
    }

    public void cancel()
    {
        this;
        JVM INSTR monitorenter ;
        if (b == c.WAITING)
        {
            b = c.CANCELLED;
            if (c != null)
            {
                c.onCancelled(this);
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final long getDurationMillis()
    {
        this;
        JVM INSTR monitorenter ;
        long l = d;
        this;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    public final int getHttpStatusCode()
    {
        this;
        JVM INSTR monitorenter ;
        int i = e;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public void stop(int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (b == c.WAITING)
        {
            b = c.STOPPED;
            e = i;
            long l = System.nanoTime();
            d = TimeUnit.MILLISECONDS.convert(l - a, TimeUnit.NANOSECONDS);
            if (c != null)
            {
                c.onStopped(this);
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
