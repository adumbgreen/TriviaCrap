// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            ParameterMap

class AdEvent
{

    public static final String POSITION_ON_SCREEN = "positionOnScreen";
    private final AdEventType adEventType;
    private String customType;
    private final ParameterMap parameters = new ParameterMap();

    public AdEvent(AdEventType adeventtype)
    {
        adEventType = adeventtype;
    }

    public AdEventType getAdEventType()
    {
        return adEventType;
    }

    public String getCustomType()
    {
        return customType;
    }

    public ParameterMap getParameters()
    {
        return parameters;
    }

    public void setCustomType(String s)
    {
        customType = s;
    }

    public AdEvent setParameter(String s, Object obj)
    {
        parameters.setParameter(s, obj);
        return this;
    }
}
