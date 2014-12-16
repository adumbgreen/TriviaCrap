// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;


// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDView

public interface MRAIDViewListener
{

    public abstract void onClick(MRAIDView mraidview);

    public abstract void onClose(MRAIDView mraidview);

    public abstract void onExpand(MRAIDView mraidview);

    public abstract void onFailedToReceiveAd(MRAIDView mraidview);

    public abstract void onLeaveApplication(MRAIDView mraidview);

    public abstract void onReceiveAd(MRAIDView mraidview);
}
