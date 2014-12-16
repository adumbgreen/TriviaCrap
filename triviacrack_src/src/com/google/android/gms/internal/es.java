// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            dv

public class es
    implements android.os.Parcelable.Creator
{

    public es()
    {
    }

    static void a(dv dv1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, dv1.a);
        c.a(parcel, 2, dv1.b, false);
        c.a(parcel, 3, dv1.c, false);
        c.a(parcel, 4, dv1.d, false);
        c.a(parcel, 5, dv1.e);
        c.a(parcel, 6, dv1.f, false);
        c.a(parcel, 7, dv1.g);
        c.a(parcel, 8, dv1.h);
        c.a(parcel, 9, dv1.i);
        c.a(parcel, 10, dv1.j, false);
        c.a(parcel, 11, dv1.k);
        c.a(parcel, 12, dv1.l);
        c.a(parcel, 13, dv1.m, false);
        c.a(parcel, 14, dv1.n);
        c.a(parcel, 15, dv1.o, false);
        c.a(parcel, 19, dv1.q, false);
        c.a(parcel, 18, dv1.p);
        c.a(parcel, 21, dv1.r, false);
        c.a(parcel, j);
    }

    public dv a(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        java.util.ArrayList arraylist = null;
        int k = 0;
        java.util.ArrayList arraylist1 = null;
        long l = 0L;
        boolean flag = false;
        long l1 = 0L;
        java.util.ArrayList arraylist2 = null;
        long l2 = 0L;
        int i1 = 0;
        String s2 = null;
        long l3 = 0L;
        String s3 = null;
        boolean flag1 = false;
        String s4 = null;
        String s5 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.a(j1))
                {
                case 16: // '\020'
                case 17: // '\021'
                case 20: // '\024'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.d(parcel, j1);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.f(parcel, j1);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, j1);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.j(parcel, j1);
                    break;

                case 5: // '\005'
                    k = com.google.android.gms.common.internal.safeparcel.a.d(parcel, j1);
                    break;

                case 6: // '\006'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, j1);
                    break;

                case 7: // '\007'
                    l = com.google.android.gms.common.internal.safeparcel.a.e(parcel, j1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, j1);
                    break;

                case 10: // '\n'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, j1);
                    break;

                case 11: // '\013'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, j1);
                    break;

                case 12: // '\f'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, j1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, j1);
                    break;

                case 14: // '\016'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, j1);
                    break;

                case 15: // '\017'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, j1);
                    break;

                case 19: // '\023'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, j1);
                    break;

                case 18: // '\022'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 21: // '\025'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new dv(j, s, s1, arraylist, k, arraylist1, l, flag, l1, arraylist2, l2, i1, s2, l3, s3, flag1, s4, s5);
            }
        } while (true);
    }

    public dv[] a(int i)
    {
        return new dv[i];
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
