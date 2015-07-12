// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdEvent, AdError, AdProperties

interface AdControlCallback
{

    public static final int CLOSE_EVENT_ONLY = 0;
    public static final int CLOSE_FULL = 1;
    public static final int NO_CLOSE = 2;

    public abstract int adClosing();

    public abstract boolean isAdReady(boolean flag);

    public abstract void onAdEvent(AdEvent adevent);

    public abstract void onAdFailed(AdError aderror);

    public abstract void onAdLoaded(AdProperties adproperties);

    public abstract void onAdRendered();

    public abstract void postAdRendered();
}
