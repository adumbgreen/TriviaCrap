// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;


// Referenced classes of package com.facebook.ads:
//            NativeAd, ImpressionListener

class this._cls0
    implements com.facebook.ads.internal.mpressionHelper
{

    final NativeAd this$0;

    public void afterImpressionSent()
    {
    }

    public void onLoggingImpression()
    {
        if (NativeAd.access$600(NativeAd.this) != null)
        {
            NativeAd.access$600(NativeAd.this).onLoggingImpression(NativeAd.this);
        }
    }

    public boolean shouldSendImpression()
    {
        return NativeAd.access$500(NativeAd.this);
    }
8M�	�    1   com/facebook/ads/NativeAd/access$600    V    this$0    }
