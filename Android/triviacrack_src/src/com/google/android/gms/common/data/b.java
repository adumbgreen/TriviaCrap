// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.common.data:
//            DataHolder

public class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(DataHolder dataholder, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, dataholder.c(), false);
        c.a(parcel, 1000, dataholder.b());
        c.a(parcel, 2, dataholder.d(), i, false);
        c.a(parcel, 3, dataholder.e());
        c.a(parcel, 4, dataholder.f(), false);
        c.a(parcel, j);
    }

    public DataHolder a(Parcel parcel)
    {
        int i = 0;
        android.os.Bundle bundle = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        CursorWindow acursorwindow[] = null;
        String as[] = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.a(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    as = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.d(parcel, l);
                    break;

                case 2: // '\002'
                    acursorwindow = (CursorWindow[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, CursorWindow.CREATOR);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, l);
                    break;

                case 4: // '\004'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.h(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                DataHolder dataholder = new DataHolder(k, as, acursorwindow, i, bundle);
                dataholder.a();
                return dataholder;
            }
        } while (true);
    }

    public DataHolder[] a(int i)
    {
        return new DataHolder[i];
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
