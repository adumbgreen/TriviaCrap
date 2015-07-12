// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


// Referenced classes of package com.lifestreet.android.lsmsdk:
//            Adapter

public interface AdapterController
{

    public abstract void onDestroy();

    public abstract void onNotResponding();

    public abstract void onRequestAdFailed();

    public abstract void requestAd();

    public abstract void setAdapter(Adapter adapter);

    public abstract void showAd();
}
