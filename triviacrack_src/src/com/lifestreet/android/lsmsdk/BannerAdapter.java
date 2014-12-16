// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


// Referenced classes of package com.lifestreet.android.lsmsdk:
//            Adapter, BannerAdapterListener, SlotContext

public interface BannerAdapter
    extends Adapter
{

    public abstract void getBannerAd(BannerAdapterListener banneradapterlistener, SlotContext slotcontext, Object obj);
}
