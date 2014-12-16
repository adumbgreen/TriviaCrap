// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdLayout, AdController, AdState

class this._cls0
    implements Runnable
{

    final AdLayout this$0;

    public void run()
    {
        if (AdLayout.access$100(AdLayout.this).getAdState().equals(AdState.EXPANDED))
        {
            AdLayout.access$100(AdLayout.this).closeAd();
        }
    }

    r()
    {
        this$0 = AdLayout.this;
        super();
    }
}
