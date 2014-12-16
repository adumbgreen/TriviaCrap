// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;

import android.os.Message;
import java.util.Iterator;

// Referenced classes of package com.mopub.common.event:
//            TimedEvent, EventRecorder, Event

class a
    implements android.os.ispatcher._cls1
{

    final a a;

    public boolean handleMessage(Message message)
    {
        if (message.obj instanceof TimedEvent)
        {
            TimedEvent timedevent = (TimedEvent)message.obj;
            for (Iterator iterator1 = a(a).iterator(); iterator1.hasNext(); ((EventRecorder)iterator1.next()).recordTimedEvent(timedevent)) { }
        } else
        if (message.obj instanceof Event)
        {
            Event event = (Event)message.obj;
            for (Iterator iterator = (a).iterator(); iterator.hasNext(); ((EventRecorder)iterator.next()).recordEvent(event)) { }
        }
        return true;
    }

    ( )
    {
        a = ;
        super();
    }
}
