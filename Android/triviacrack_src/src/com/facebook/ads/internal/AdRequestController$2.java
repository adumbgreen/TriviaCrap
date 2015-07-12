// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import com.facebook.ads.AdError;

// Referenced classes of package com.facebook.ads.internal:
//            AdRequestController, AdResponse

class this._cls0
    implements this._cls0
{

    final AdRequestController this$0;

    public void onCompleted(AdResponse adresponse)
    {
        AdRequestController.access$402(AdRequestController.this, adresponse.getRefreshIntervalMillis());
        AdRequestController.access$502(AdRequestController.this, adresponse.getRefreshThresholdMillis());
        AdRequestController.access$200(AdRequestController.this).ompleted(adresponse);
        AdRequestController.access$302(AdRequestController.this, true);
    }

    public void onError(AdError aderror)
    {
        AdRequestController.access$200(AdRequestController.this).rror(aderror);
        AdRequestController.access$302(AdRequestController.this, true);
        scheduleRefresh("onError");
    }

    ()
    {
        this$0 = AdRequestController.this;
        super();
    }
}
