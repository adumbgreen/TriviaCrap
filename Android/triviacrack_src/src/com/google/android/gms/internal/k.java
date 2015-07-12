// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            aj, ax

public class k
    implements android.os.Parcelable.Creator
{

    public k()
    {
    }

    static void a(aj aj1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, aj1.a);
        c.a(parcel, 2, aj1.b);
        c.a(parcel, 3, aj1.c, false);
        c.a(parcel, 4, aj1.d);
        c.a(parcel, 5, aj1.e, false);
        c.a(parcel, 6, aj1.f);
        c.a(parcel, 7, aj1.g);
        c.a(parcel, 8, aj1.h);
        c.a(parcel, 9, aj1.i, false);
        c.a(parcel, 10, aj1.j, i, false);
        c.a(parcel, 11, aj1.k, i, false);
        c.a(parcel, 12, aj1.l, false);
        c.a(parcel, 13, aj1.m, false);
        c.a(parcel, j);
    }

    public aj a(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int j = 0;
        long l = 0L;
        android.os.Bundle bundle = null;
        int i1 = 0;
        java.util.ArrayList arraylist = null;
        boolean flag = false;
        int j1 = 0;
        boolean flag1 = false;
        String s = null;
        ax ax1 = null;
        Location location = null;
        String s1 = null;
        android.os.Bundle bundle1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k1 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.a(k1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k1);
                    break;

                case 3: // '\003'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.h(parcel, k1);
                    break;

                case 4: // '\004'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.j(parcel, k1);
                    break;

                case 6: // '\006'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1);
                    break;

                case 7: // '\007'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 8: // '\b'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1);
                    break;

                case 9: // '\t'
                    s = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k1);
                    break;

                case 10: // '\n'
                    ax1 = (ax)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, ax.CREATOR);
                    break;

                case 11: // '\013'
                    location = (Location)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, Location.CREATOR);
                    break;

                case 12: // '\f'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k1);
                    break;

                case 13: // '\r'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, k1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new aj(j, l, bundle, i1, arraylist, flag, j1, flag1, s, ax1, location, s1, bundle1);
            }
        } while (true);
    }

    public aj[] a(int i)
    {
        return new aj[i];
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
