// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Iterator;

// Referenced classes of package com.mopub.common.event:
//            b, BaseEvent, TimedEvent, EventRecorder, 
//            Event

public class a
    implements b
{

    android.os.tDispatcher.a a;
    private final Iterable b;
    private final HandlerThread c;
    private final Handler d;

    static Iterable a(a a1)
    {
        return a1.b;
    }

    private void a(BaseEvent baseevent)
    {
        Message.obtain(d, 0, baseevent).sendToTarget();
    }

    static void a(d d1, BaseEvent baseevent)
    {
        d1.a(baseevent);
    }

    public void onCancelled(TimedEvent timedevent)
    {
    }

    public void onStopped(TimedEvent timedevent)
    {
        a(timedevent);
    }

    _cls1.a(Iterable iterable, HandlerThread handlerthread)
    {
        b = iterable;
        a = new android.os.Handler.Callback() {

            final MoPubEvents.EventDispatcher a;

            public boolean handleMessage(Message message)
            {
                if (message.obj instanceof TimedEvent)
                {
                    TimedEvent timedevent = (TimedEvent)message.obj;
                    for (Iterator iterator1 = MoPubEvents.EventDispatcher.a(a).iterator(); iterator1.hasNext(); ((EventRecorder)iterator1.next()).recordTimedEvent(timedevent)) { }
                } else
                if (message.obj instanceof Event)
                {
                    Event event = (Event)message.obj;
                    for (Iterator iterator = MoPubEvents.EventDispatcher.a(a).iterator(); iterator.hasNext(); ((EventRecorder)iterator.next()).recordEvent(event)) { }
                }
                return true;
            }

            
            {
                a = MoPubEvents.EventDispatcher.this;
                super();
            }
        };
        c = handlerthread;
        c.start();
        d = new Handler(c.getLooper(), a);
    }
}
