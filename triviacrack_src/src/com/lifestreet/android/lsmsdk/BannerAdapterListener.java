// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.view.View;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdapterListener

public interface BannerAdapterListener
    extends AdapterListener
{

    public abstract void onClick(View view);

    public abstract void onClose(View view);

    public abstract void onDismissScreen(View view);

    public abstract void onFailedToReceiveAd(View view);

    public abstract void onLeaveApplication(View view);

    public abstract void onPresentScreen(View view);

    public abstract void onReceiveAd(View view);
}
