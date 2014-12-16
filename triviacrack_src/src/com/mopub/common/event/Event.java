// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;

import com.mopub.common.ClientMetadata;

// Referenced classes of package com.mopub.common.event:
//            BaseEvent

public class Event extends BaseEvent
{

    Event(BaseEvent.Type type, String s, ClientMetadata clientmetadata)
    {
        super(type, s, clientmetadata);
    }
}
