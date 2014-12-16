// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;

// Referenced classes of package com.facebook.ads.internal:
//            AdHandler, NativeAdDataModel

public class NativeAdHandler extends AdHandler
{

    public NativeAdHandler(AdHandler.ImpressionHelper impressionhelper, long l, NativeAdDataModel nativeaddatamodel, Context context)
    {
        super(impressionhelper, l, context);
        setAdDataModel(nativeaddatamodel);
    }

    protected void sendImpression()
    {
        this;
        JVM INSTR monitorenter ;
        ((NativeAdDataModel)adDataModel).logImpression();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
