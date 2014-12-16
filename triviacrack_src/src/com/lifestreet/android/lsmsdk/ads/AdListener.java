// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;


// Referenced classes of package com.lifestreet.android.lsmsdk.ads:
//            AdView

public interface AdListener
{

    public abstract void onClick();

    public abstract void onClose();

    public abstract void onDismissScreen(AdView adview);

    public abstract void onFailedToReceiveAd(AdView adview, String s);

    public abstract void onLeaveApplication(AdView adview);

    public abstract void onPresentScreen(AdView adview);

    public abstract void onReceiveAd(AdView adview);
}
