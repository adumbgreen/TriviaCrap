// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.common.internal.safeparcel:
//            b

public class a
{

    public static int a(int k)
    {
        return 0xffff & k;
    }

    public static int a(Parcel parcel)
    {
        return parcel.readInt();
    }

    public static int a(Parcel parcel, int k)
    {
        if ((k & 0xffff0000) != 0xffff0000)
        {
            return 0xffff & k >> 16;
        } else
        {
            return parcel.readInt();
        }
    }

    public static Parcelable a(Parcel parcel, int k, android.os.Parcelable.Creator creator)
    {
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (l == 0)
        {
            return null;
        } else
        {
            Parcelable parcelable = (Parcelable)creator.createFromParcel(parcel);
            parcel.setDataPosition(l + i1);
            return parcelable;
        }
    }

    private static void a(Parcel parcel, int k, int l)
    {
        int i1 = a(parcel, k);
        if (i1 != l)
        {
            throw new b((new StringBuilder()).append("Expected size ").append(l).append(" got ").append(i1).append(" (0x").append(Integer.toHexString(i1)).append(")").toString(), parcel);
        } else
        {
            return;
        }
    }

    public static int b(Parcel parcel)
    {
        int k = a(parcel);
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (a(k) != 20293)
        {
            throw new b((new StringBuilder()).append("Expected object header. Got 0x").append(Integer.toHexString(k)).toString(), parcel);
        }
        int j1 = i1 + l;
        if (j1 < i1 || j1 > parcel.dataSize())
        {
            throw new b((new StringBuilder()).append("Size read is invalid start=").append(i1).append(" end=").append(j1).toString(), parcel);
        } else
        {
            return j1;
        }
    }

    public static void b(Parcel parcel, int k)
    {
        parcel.setDataPosition(a(parcel, k) + parcel.dataPosition());
    }

    public static Object[] b(Parcel parcel, int k, android.os.Parcelable.Creator creator)
    {
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (l == 0)
        {
            return null;
        } else
        {
            Object aobj[] = parcel.createTypedArray(creator);
            parcel.setDataPosition(l + i1);
            return aobj;
        }
    }

    public static boolean c(Parcel parcel, int k)
    {
        a(parcel, k, 4);
        return parcel.readInt() != 0;
    }

    public static int d(Parcel parcel, int k)
    {
        a(parcel, k, 4);
        return parcel.readInt();
    }

    public static long e(Parcel parcel, int k)
    {
        a(parcel, k, 8);
        return parcel.readLong();
    }

    public static String f(Parcel parcel, int k)
    {
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (l == 0)
        {
            return null;
        } else
        {
            String s = parcel.readString();
            parcel.setDataPosition(l + i1);
            return s;
        }
    }

    public static IBinder g(Parcel parcel, int k)
    {
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (l == 0)
        {
            return null;
        } else
        {
            IBinder ibinder = parcel.readStrongBinder();
            parcel.setDataPosition(l + i1);
            return ibinder;
        }
    }

    public static Bundle h(Parcel parcel, int k)
    {
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (l == 0)
        {
            return null;
        } else
        {
            Bundle bundle = parcel.readBundle();
            parcel.setDataPosition(l + i1);
            return bundle;
        }
    }

    public static String[] i(Parcel parcel, int k)
    {
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (l == 0)
        {
            return null;
        } else
        {
            String as[] = parcel.createStringArray();
            parcel.setDataPosition(l + i1);
            return as;
        }
    }

    public static ArrayList j(Parcel parcel, int k)
    {
        int l = a(parcel, k);
        int i1 = parcel.dataPosition();
        if (l == 0)
        {
            return null;
        } else
        {
            ArrayList arraylist = parcel.createStringArrayList();
            parcel.setDataPosition(l + i1);
            return arraylist;
        }
    }
}
