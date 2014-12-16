// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            dt, aj, am, ew

public class er
    implements android.os.Parcelable.Creator
{

    public er()
    {
    }

    static void a(dt dt1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, dt1.a);
        c.a(parcel, 2, dt1.b, false);
        c.a(parcel, 3, dt1.c, i, false);
        c.a(parcel, 4, dt1.d, i, false);
        c.a(parcel, 5, dt1.e, false);
        c.a(parcel, 6, dt1.f, i, false);
        c.a(parcel, 7, dt1.g, i, false);
        c.a(parcel, 8, dt1.h, false);
        c.a(parcel, 9, dt1.i, false);
        c.a(parcel, 10, dt1.j, false);
        c.a(parcel, 11, dt1.k, i, false);
        c.a(parcel, 12, dt1.l, false);
        c.a(parcel, j);
    }

    public dt a(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int j = 0;
        android.os.Bundle bundle = null;
        aj aj1 = null;
        am am1 = null;
        String s = null;
        ApplicationInfo applicationinfo = null;
        PackageInfo packageinfo = null;
        String s1 = null;
        String s2 = null;
        String s3 = null;
        ew ew1 = null;
        android.os.Bundle bundle1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.a(k))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k);
                    break;

                case 2: // '\002'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.h(parcel, k);
                    break;

                case 3: // '\003'
                    aj1 = (aj)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, aj.CREATOR);
                    break;

                case 4: // '\004'
                    am1 = (am)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, am.CREATOR);
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k);
                    break;

                case 6: // '\006'
                    applicationinfo = (ApplicationInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ApplicationInfo.CREATOR);
                    break;

                case 7: // '\007'
                    packageinfo = (PackageInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, PackageInfo.CREATOR);
                    break;

                case 8: // '\b'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k);
                    break;

                case 9: // '\t'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k);
                    break;

                case 10: // '\n'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k);
                    break;

                case 11: // '\013'
                    ew1 = (ew)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ew.CREATOR);
                    break;

                case 12: // '\f'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new dt(j, bundle, aj1, am1, s, applicationinfo, packageinfo, s1, s2, s3, ew1, bundle1);
            }
        } while (true);
    }

    public dt[] a(int i)
    {
        return new dt[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }
}
