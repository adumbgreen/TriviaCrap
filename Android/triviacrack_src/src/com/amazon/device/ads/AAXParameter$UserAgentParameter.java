// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            InternalAdRegistration, IInternalAdRegistration, DeviceInfo

class it> extends it>
{

    protected volatile Object getDerivedValue(it> it>)
    {
        return getDerivedValue(it>);
    }

    protected String getDerivedValue(getDerivedValue getderivedvalue)
    {
        return InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString();
    }

    ()
    {
        super("ua", "debug.ua");
    }
}
