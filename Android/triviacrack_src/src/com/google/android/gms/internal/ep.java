// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;

// Referenced classes of package com.google.android.gms.internal:
//            gy, eu, hs, et, 
//            hd

public class ep extends gy
{

    final int a;

    public ep(Context context, d d, e e, int i)
    {
        super(context, d, e, new String[0]);
        a = i;
    }

    protected et a(IBinder ibinder)
    {
        return eu.a(ibinder);
    }

    protected String a()
    {
        return "com.google.android.gms.ads.service.START";
    }

    protected void a(hs hs1, hd hd)
    {
        Bundle bundle = new Bundle();
        hs1.g(hd, a, j().getPackageName(), bundle);
    }

    protected IInterface b(IBinder ibinder)
    {
        return a(ibinder);
    }

    protected String b()
    {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    public et c()
    {
        return (et)super.m();
    }
}
