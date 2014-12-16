// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import com.facebook.ads.internal.AdResponse;
import com.facebook.ads.internal.HtmlAdDataModel;

// Referenced classes of package com.facebook.ads:
//            InterstitialAd, InterstitialAdListener, AdError

class this._cls0
    implements com.facebook.ads.internal.k
{

    final InterstitialAd this$0;

    public void onCompleted(AdResponse adresponse)
    {
        InterstitialAd.access$002(InterstitialAd.this, adresponse);
        if (adresponse.getDataModel() == null || !(adresponse.getDataModel() instanceof HtmlAdDataModel)) goto _L2; else goto _L1
_L1:
        InterstitialAd.access$102(InterstitialAd.this, true);
        if (InterstitialAd.access$200(InterstitialAd.this) != null)
        {
            InterstitialAd.access$200(InterstitialAd.this).onAdLoaded(InterstitialAd.this);
        }
_L4:
        return;
_L2:
        if (adresponse.getDataModel() != null)
        {
            break; /* Loop/switch isn't completed */
        }
        InterstitialAd.access$102(InterstitialAd.this, false);
        if (InterstitialAd.access$200(InterstitialAd.this) != null)
        {
            InterstitialAdListener interstitialadlistener = InterstitialAd.access$200(InterstitialAd.this);
            InterstitialAd interstitialad = InterstitialAd.this;
            AdError aderror;
            if (adresponse.getError() != null)
            {
                aderror = adresponse.getError();
            } else
            {
                aderror = AdError.INTERNAL_ERROR;
            }
            interstitialadlistener.onError(interstitialad, aderror);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        InterstitialAd.access$102(InterstitialAd.this, false);
        if (InterstitialAd.access$200(InterstitialAd.this) != null)
        {
            InterstitialAd.access$200(InterstitialAd.this).onError(InterstitialAd.this, AdError.INTERNAL_ERROR);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void onError(AdError aderror)
    {
        InterstitialAd.access$102(InterstitialAd.this, false);
        if (InterstitialAd.access$200(InterstitialAd.this) != null)
        {
            InterstitialAd.access$200(InterstitialAd.this).onError(InterstitialAd.this, aderror);
        }
    }

    se()
    {
        this$0 = InterstitialAd.this;
        super();
    }
}
