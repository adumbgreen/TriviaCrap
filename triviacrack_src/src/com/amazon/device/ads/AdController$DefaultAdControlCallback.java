// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdControlCallback, Log, AdController, AdState, 
//            AdEvent, AdError, AdProperties

class this._cls0
    implements AdControlCallback
{

    final AdController this$0;

    public int adClosing()
    {
        Log.d("AdController", "DefaultAdControlCallback adClosing called");
        return 1;
    }

    public boolean isAdReady(boolean flag)
    {
        Log.d("AdController", "DefaultAdControlCallback isAdReady called");
        return getAdState().equals(AdState.READY_TO_LOAD) || getAdState().equals(AdState.SHOWING);
    }

    public void onAdEvent(AdEvent adevent)
    {
        Log.d("AdController", "DefaultAdControlCallback onAdEvent called");
    }

    public void onAdFailed(AdError aderror)
    {
        Log.d("AdController", "DefaultAdControlCallback onAdFailed called");
    }

    public void onAdLoaded(AdProperties adproperties)
    {
        Log.d("AdController", "DefaultAdControlCallback onAdLoaded called");
    }

    public void onAdRendered()
    {
        Log.d("AdController", "DefaultAdControlCallback onAdRendered called");
    }

    public void postAdRendered()
    {
        Log.d("AdController", "DefaultAdControlCallback postAdRendered called");
    }

    A()
    {
        this$0 = AdController.this;
        super();
    }
}
