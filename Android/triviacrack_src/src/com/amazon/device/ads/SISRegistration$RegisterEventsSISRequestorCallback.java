// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            SISRequestorCallback, SISRegistration

public class sisRegistration
    implements SISRequestorCallback
{

    private final SISRegistration sisRegistration;

    public void onSISCallComplete()
    {
        sisRegistration.registerEvents();
    }

    public (SISRegistration sisregistration)
    {
        sisRegistration = sisregistration;
    }
}
