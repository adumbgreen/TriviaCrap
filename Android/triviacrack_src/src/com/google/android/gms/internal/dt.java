// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            er, eq, aj, am, 
//            ew

public final class dt
    implements SafeParcelable
{

    public static final er CREATOR = new er();
    public final int a;
    public final Bundle b;
    public final aj c;
    public final am d;
    public final String e;
    public final ApplicationInfo f;
    public final PackageInfo g;
    public final String h;
    public final String i;
    public final String j;
    public final ew k;
    public final Bundle l;

    dt(int i1, Bundle bundle, aj aj, am am, String s, ApplicationInfo applicationinfo, PackageInfo packageinfo, 
            String s1, String s2, String s3, ew ew, Bundle bundle1)
    {
        a = i1;
        b = bundle;
        c = aj;
        d = am;
        e = s;
        f = applicationinfo;
        g = packageinfo;
        h = s1;
        i = s2;
        j = s3;
        k = ew;
        l = bundle1;
    }

    public dt(Bundle bundle, aj aj, am am, String s, ApplicationInfo applicationinfo, PackageInfo packageinfo, String s1, 
            String s2, String s3, ew ew, Bundle bundle1)
    {
        this(2, bundle, aj, am, s, applicationinfo, packageinfo, s1, s2, s3, ew, bundle1);
    }

    public dt(eq eq1, String s)
    {
        this(eq1.a, eq1.b, eq1.c, eq1.d, eq1.e, eq1.f, s, eq1.g, eq1.h, eq1.j, eq1.i);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        er.a(this, parcel, i1);
    }

}
