// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;

import com.mopub.common.ClientMetadata;

public abstract class BaseEvent
{

    private final ClientMetadata a;
    private final String b;
    private final String c;
    private final long d = System.currentTimeMillis();

    BaseEvent(Type type, String s, ClientMetadata clientmetadata)
    {
        b = type.mName;
        c = s;
        a = clientmetadata;
    }

    public String getEventName()
    {
        return b;
    }

    public long getEventTimeUtcMillis()
    {
        return d;
    }

    public ClientMetadata getMetadata()
    {
        return a;
    }

    public String getRequestUrl()
    {
        return c;
    }

    private class Type extends Enum
    {

        public static final Type DATA_ERROR;
        public static final Type NETWORK_REQUEST;
        private static final Type a[];
        public final String mName;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/mopub/common/event/BaseEvent$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])a.clone();
        }

        static 
        {
            NETWORK_REQUEST = new Type("NETWORK_REQUEST", 0, "request");
            DATA_ERROR = new Type("DATA_ERROR", 1, "invalid_data");
            Type atype[] = new Type[2];
            atype[0] = NETWORK_REQUEST;
            atype[1] = DATA_ERROR;
            a = atype;
        }

        private Type(String s, int i, String s1)
        {
            super(s, i);
            mName = s1;
        }
    }

}
