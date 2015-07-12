// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;

// Referenced classes of package com.amazon.device.ads:
//            SDKEventListener, SDKEvent, InterstitialAdActivityAdapter, AdControlAccessor

class this._cls0
    implements SDKEventListener
{

    final InterstitialAdActivityAdapter this$0;

    public void onSDKEvent(SDKEvent sdkevent, AdControlAccessor adcontrolaccessor)
    {
        if (sdkevent.getEventType()._mth0(this._fld0) && !InterstitialAdActivityAdapter.access$000(InterstitialAdActivityAdapter.this).isFinishing())
        {
            InterstitialAdActivityAdapter.access$102(InterstitialAdActivityAdapter.this, null);
            InterstitialAdActivityAdapter.access$000(InterstitialAdActivityAdapter.this).finish();
        }
    }

    ()
    {
        this$0 = InterstitialAdActivityAdapter.this;
        super();
    }
}
