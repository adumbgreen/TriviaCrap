// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;

import android.os.HandlerThread;
import com.mopub.common.ClientMetadata;
import java.util.ArrayList;

// Referenced classes of package com.mopub.common.event:
//            a, Event, TimedEvent

public class MoPubEvents
{

    private static volatile EventDispatcher a;

    public MoPubEvents()
    {
    }

    private static EventDispatcher a()
    {
        EventDispatcher eventdispatcher;
        eventdispatcher = a;
        if (eventdispatcher != null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        com/mopub/common/event/MoPubEvents;
        JVM INSTR monitorenter ;
        EventDispatcher eventdispatcher1 = a;
        if (eventdispatcher1 != null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        ArrayList arraylist = new ArrayList();
        arraylist.add(new a());
        eventdispatcher1 = new EventDispatcher(arraylist, new HandlerThread("mopub_event_queue"));
        a = eventdispatcher1;
        com/mopub/common/event/MoPubEvents;
        JVM INSTR monitorexit ;
        return eventdispatcher1;
        Exception exception;
        exception;
        com/mopub/common/event/MoPubEvents;
        JVM INSTR monitorexit ;
        throw exception;
        return eventdispatcher;
    }

    public static void event(BaseEvent.Type type, String s)
    {
        EventDispatcher.a(a(), new Event(type, s, ClientMetadata.getInstance()));
    }

    public static void setEventDispatcher(EventDispatcher eventdispatcher)
    {
        a = eventdispatcher;
    }

    public static TimedEvent timedEvent(BaseEvent.Type type, String s)
    {
        EventDispatcher eventdispatcher = a();
        return new TimedEvent(type, s, ClientMetadata.getInstance(), eventdispatcher);
    }

    private class EventDispatcher
        implements b
    {

        android.os.Handler.Callback a;
        private final Iterable b;
        private final HandlerThread c;
        private final Handler d;

        static Iterable a(EventDispatcher eventdispatcher)
        {
            return eventdispatcher.b;
        }

        private void a(BaseEvent baseevent)
        {
            Message.obtain(d, 0, baseevent).sendToTarget();
        }

        static void a(EventDispatcher eventdispatcher, BaseEvent baseevent)
        {
            eventdispatcher.a(baseevent);
        }

        public void onCancelled(TimedEvent timedevent)
        {
        }

        public void onStopped(TimedEvent timedevent)
        {
            a(timedevent);
        }

        EventDispatcher(Iterable iterable, HandlerThread handlerthread)
        {
            b = iterable;
            a = new android.os.Handler.Callback() {

                final EventDispatcher a;

                public boolean handleMessage(Message message)
                {
                    if (message.obj instanceof TimedEvent)
                    {
                        TimedEvent timedevent = (TimedEvent)message.obj;
                        for (Iterator iterator1 = EventDispatcher.a(a).iterator(); iterator1.hasNext(); ((EventRecorder)iterator1.next()).recordTimedEvent(timedevent)) { }
                    } else
                    if (message.obj instanceof Event)
                    {
                        Event event1 = (Event)message.obj;
                        for (Iterator iterator = EventDispatcher.a(a).iterator(); iterator.hasNext(); ((EventRecorder)iterator.next()).recordEvent(event1)) { }
                    }
                    return true;
                }

                
                {
                    a = EventDispatcher.this;
                    super();
                }
            };
            c = handlerthread;
            c.start();
            d = new Handler(c.getLooper(), a);
        }
    }

}
