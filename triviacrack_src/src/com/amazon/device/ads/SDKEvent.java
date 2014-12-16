// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Set;

class SDKEvent
{

    public static final String BRIDGE_NAME = "bridgeName";
    private final SDKEventType eventType;
    private final HashMap parameters = new HashMap();

    public SDKEvent(SDKEventType sdkeventtype)
    {
        eventType = sdkeventtype;
    }

    public SDKEventType getEventType()
    {
        return eventType;
    }

    public String getParameter(String s)
    {
        return (String)parameters.get(s);
    }

    public Set getParameterNames()
    {
        return parameters.keySet();
    }

    public SDKEvent setParameter(String s, String s1)
    {
        parameters.put(s, s1);
        return this;
    }
}
