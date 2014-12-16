// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;
import com.google.android.gms.a.d;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            cs, du, dc, de

public final class cr
    implements SafeParcelable
{

    public static final cs CREATOR = new cs();
    public final int a;
    public final du b;
    public final dc c;
    public final de d;
    public final Context e;

    cr(int i, IBinder ibinder, IBinder ibinder1, IBinder ibinder2, IBinder ibinder3)
    {
        a = i;
        b = (du)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder));
        c = (dc)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder1));
        d = (de)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder2));
        e = (Context)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder3));
    }

    public cr(de de1, du du1, dc dc1, Context context)
    {
        a = 1;
        d = de1;
        b = du1;
        c = dc1;
        e = context;
    }

    public static cr a(Intent intent)
    {
        cr cr1;
        try
        {
            Bundle bundle = intent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            bundle.setClassLoader(com/google/android/gms/internal/cr.getClassLoader());
            cr1 = (cr)bundle.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
        }
        catch (Exception exception)
        {
            return null;
        }
        return cr1;
    }

    public static void a(Intent intent, cr cr1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", cr1);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    IBinder a()
    {
        return com.google.android.gms.a.d.a(b).asBinder();
    }

    IBinder b()
    {
        return com.google.android.gms.a.d.a(c).asBinder();
    }

    IBinder c()
    {
        return com.google.android.gms.a.d.a(d).asBinder();
    }

    IBinder d()
    {
        return com.google.android.gms.a.d.a(e).asBinder();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.internal.cs.a(this, parcel, i);
    }

}
