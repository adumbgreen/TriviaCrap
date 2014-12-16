// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import java.util.List;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdsParams

public interface SlotResponse
{

    public abstract AdsParams getAdsParams();

    public abstract List getNetworks();

    public abstract void parse();
}
