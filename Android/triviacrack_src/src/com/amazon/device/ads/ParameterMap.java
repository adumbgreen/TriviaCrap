// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.HashMap;

class ParameterMap
{

    private final HashMap parameters = new HashMap();

    ParameterMap()
    {
    }

    public Boolean getBooleanParameter(String s)
    {
        return (Boolean)parameters.get(s);
    }

    public Double getDoubleParameter(String s)
    {
        return (Double)parameters.get(s);
    }

    public Integer getIntParameter(String s)
    {
        return (Integer)parameters.get(s);
    }

    public Long getLongParameter(String s)
    {
        return (Long)parameters.get(s);
    }

    public Object getParameter(String s)
    {
        return parameters.get(s);
    }

    public String getStringParameter(String s)
    {
        return (String)parameters.get(s);
    }

    public void setParameter(String s, Object obj)
    {
        parameters.put(s, obj);
    }
}
