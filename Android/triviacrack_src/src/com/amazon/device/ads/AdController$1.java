// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.TimerTask;

// Referenced classes of package com.amazon.device.ads:
//            AdController

class this._cls0 extends TimerTask
{

    final AdController this$0;

    public void run()
    {
        onAdTimedOut();
    }

    ()
    {
        this$0 = AdController.this;
        super();
    }
}
