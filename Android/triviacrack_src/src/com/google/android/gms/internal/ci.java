// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;
import com.google.android.gms.a.d;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            cb, iz, cc, fz, 
//            ai, ch, an, cf, 
//            ew, w

public final class ci
    implements SafeParcelable
{

    public static final cb CREATOR = new cb();
    public final int a;
    public final cf b;
    public final iz c;
    public final cc d;
    public final fz e;
    public final ai f;
    public final String g;
    public final boolean h;
    public final String i;
    public final ch j;
    public final int k;
    public final int l;
    public final String m;
    public final ew n;
    public final an o;
    public final String p;
    public final w q;

    ci(int i1, cf cf, IBinder ibinder, IBinder ibinder1, IBinder ibinder2, IBinder ibinder3, String s, 
            boolean flag, String s1, IBinder ibinder4, int j1, int k1, String s2, ew ew, 
            IBinder ibinder5, String s3, w w)
    {
        a = i1;
        b = cf;
        c = (iz)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder));
        d = (cc)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder1));
        e = (fz)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder2));
        f = (ai)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder3));
        g = s;
        h = flag;
        i = s1;
        j = (ch)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder4));
        k = j1;
        l = k1;
        m = s2;
        n = ew;
        o = (an)com.google.android.gms.a.d.a(com.google.android.gms.a.b.a(ibinder5));
        p = s3;
        q = w;
    }

    public ci(cf cf, iz iz1, cc cc1, ch ch1, ew ew)
    {
        a = 4;
        b = cf;
        c = iz1;
        d = cc1;
        e = null;
        f = null;
        g = null;
        h = false;
        i = null;
        j = ch1;
        k = -1;
        l = 4;
        m = null;
        n = ew;
        o = null;
        p = null;
        q = null;
    }

    public ci(iz iz1, cc cc1, ai ai1, ch ch1, fz fz1, boolean flag, int i1, 
            String s, ew ew, an an1)
    {
        a = 4;
        b = null;
        c = iz1;
        d = cc1;
        e = fz1;
        f = ai1;
        g = null;
        h = flag;
        i = null;
        j = ch1;
        k = i1;
        l = 3;
        m = s;
        n = ew;
        o = an1;
        p = null;
        q = null;
    }

    public ci(iz iz1, cc cc1, ai ai1, ch ch1, fz fz1, boolean flag, int i1, 
            String s, String s1, ew ew, an an1)
    {
        a = 4;
        b = null;
        c = iz1;
        d = cc1;
        e = fz1;
        f = ai1;
        g = s1;
        h = flag;
        i = s;
        j = ch1;
        k = i1;
        l = 3;
        m = null;
        n = ew;
        o = an1;
        p = null;
        q = null;
    }

    public ci(iz iz1, cc cc1, ch ch1, fz fz1, int i1, ew ew, String s, 
            w w)
    {
        a = 4;
        b = null;
        c = iz1;
        d = cc1;
        e = fz1;
        f = null;
        g = null;
        h = false;
        i = null;
        j = ch1;
        k = i1;
        l = 1;
        m = null;
        n = ew;
        o = null;
        p = s;
        q = w;
    }

    public ci(iz iz1, cc cc1, ch ch1, fz fz1, boolean flag, int i1, ew ew)
    {
        a = 4;
        b = null;
        c = iz1;
        d = cc1;
        e = fz1;
        f = null;
        g = null;
        h = flag;
        i = null;
        j = ch1;
        k = i1;
        l = 2;
        m = null;
        n = ew;
        o = null;
        p = null;
        q = null;
    }

    public static ci a(Intent intent)
    {
        ci ci1;
        try
        {
            Bundle bundle = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundle.setClassLoader(com/google/android/gms/internal/ci.getClassLoader());
            ci1 = (ci)bundle.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        }
        catch (Exception exception)
        {
            return null;
        }
        return ci1;
    }

    public static void a(Intent intent, ci ci1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", ci1);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    IBinder a()
    {
        return com.google.android.gms.a.d.a(c).asBinder();
    }

    IBinder b()
    {
        return com.google.android.gms.a.d.a(d).asBinder();
    }

    IBinder c()
    {
        return com.google.android.gms.a.d.a(e).asBinder();
    }

    IBinder d()
    {
        return com.google.android.gms.a.d.a(f).asBinder();
    }

    public int describeContents()
    {
        return 0;
    }

    IBinder e()
    {
        return com.google.android.gms.a.d.a(o).asBinder();
    }

    IBinder f()
    {
        return com.google.android.gms.a.d.a(j).asBinder();
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.internal.cb.a(this, parcel, i1);
    }

}
