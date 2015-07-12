// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            ci, cf, ew, w

public class cb
    implements android.os.Parcelable.Creator
{

    public cb()
    {
    }

    static void a(ci ci1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, ci1.a);
        c.a(parcel, 2, ci1.b, i, false);
        c.a(parcel, 3, ci1.a(), false);
        c.a(parcel, 4, ci1.b(), false);
        c.a(parcel, 5, ci1.c(), false);
        c.a(parcel, 6, ci1.d(), false);
        c.a(parcel, 7, ci1.g, false);
        c.a(parcel, 8, ci1.h);
        c.a(parcel, 9, ci1.i, false);
        c.a(parcel, 10, ci1.f(), false);
        c.a(parcel, 11, ci1.k);
        c.a(parcel, 12, ci1.l);
        c.a(parcel, 13, ci1.m, false);
        c.a(parcel, 14, ci1.n, i, false);
        c.a(parcel, 15, ci1.e(), false);
        c.a(parcel, 17, ci1.q, i, false);
        c.a(parcel, 16, ci1.p, false);
        c.a(parcel, j);
    }

    public ci a(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int j = 0;
        cf cf1 = null;
        android.os.IBinder ibinder = null;
        android.os.IBinder ibinder1 = null;
        android.os.IBinder ibinder2 = null;
        android.os.IBinder ibinder3 = null;
        String s = null;
        boolean flag = false;
        String s1 = null;
        android.os.IBinder ibinder4 = null;
        int k = 0;
        int l = 0;
        String s2 = null;
        ew ew1 = null;
        android.os.IBinder ibinder5 = null;
        String s3 = null;
        w w1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.a(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.d(parcel, i1);
                    break;

                case 2: // '\002'
                    cf1 = (cf)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, cf.CREATOR);
                    break;

                case 3: // '\003'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    ibinder1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 5: // '\005'
                    ibinder2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 6: // '\006'
                    ibinder3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 7: // '\007'
                    s = com.google.android.gms.common.internal.safeparcel.a.f(parcel, i1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 9: // '\t'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, i1);
                    break;

                case 10: // '\n'
                    ibinder4 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 11: // '\013'
                    k = com.google.android.gms.common.internal.safeparcel.a.d(parcel, i1);
                    break;

                case 12: // '\f'
                    l = com.google.android.gms.common.internal.safeparcel.a.d(parcel, i1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, i1);
                    break;

                case 14: // '\016'
                    ew1 = (ew)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, ew.CREATOR);
                    break;

                case 15: // '\017'
                    ibinder5 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 17: // '\021'
                    w1 = (w)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, w.CREATOR);
                    break;

                case 16: // '\020'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ci(j, cf1, ibinder, ibinder1, ibinder2, ibinder3, s, flag, s1, ibinder4, k, l, s2, ew1, ibinder5, s3, w1);
            }
        } while (true);
    }

    public ci[] a(int i)
    {
        return new ci[i];
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
