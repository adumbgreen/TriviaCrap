// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            am

public class m
    implements android.os.Parcelable.Creator
{

    public m()
    {
    }

    static void a(am am1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, am1.a);
        c.a(parcel, 2, am1.b, false);
        c.a(parcel, 3, am1.c);
        c.a(parcel, 4, am1.d);
        c.a(parcel, 5, am1.e);
        c.a(parcel, 6, am1.f);
        c.a(parcel, 7, am1.g);
        c.a(parcel, 8, am1.h, i, false);
        c.a(parcel, j);
    }

    public am a(Parcel parcel)
    {
        am aam[] = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int k = 0;
        boolean flag = false;
        int l = 0;
        int i1 = 0;
        String s = null;
        int j1 = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int k1 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.a(k1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
                    break;

                case 1: // '\001'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.f(parcel, k1);
                    break;

                case 3: // '\003'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 4: // '\004'
                    l = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1);
                    break;

                case 6: // '\006'
                    k = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 7: // '\007'
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, k1);
                    break;

                case 8: // '\b'
                    aam = (am[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1, am.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new am(j1, s, i1, l, flag, k, i, aam);
            }
        } while (true);
    }

    public am[] a(int i)
    {
        return new am[i];
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
