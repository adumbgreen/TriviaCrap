// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;


// Referenced classes of package com.facebook.ads.internal:
//            AdRequestController

class this._cls0
    implements Runnable
{

    final AdRequestController this$0;

    public void run()
    {
        AdRequestController.access$102(AdRequestController.this, false);
        loadAd();
    }

    ()
    {
        this$0 = AdRequestController.this;
        super();
    }
}
