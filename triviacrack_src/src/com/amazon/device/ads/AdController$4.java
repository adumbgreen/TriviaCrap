// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdController, AdControlCallback, AdProperties

class val.adProperties
    implements Runnable
{

    final AdController this$0;
    final AdProperties val$adProperties;

    public void run()
    {
        if (!canBeUsed())
        {
            return;
        } else
        {
            getAdControlCallback().onAdLoaded(val$adProperties);
            return;
        }
    }

    ck()
    {
        this$0 = final_adcontroller;
        val$adProperties = AdProperties.this;
        super();
    }
}
