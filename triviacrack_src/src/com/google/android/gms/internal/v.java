// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.b;

// Referenced classes of package com.google.android.gms.internal:
//            u, x, am, m, 
//            bh

public abstract class v extends Binder
    implements u
{

    public static u a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (iinterface != null && (iinterface instanceof u))
        {
            return (u)iinterface;
        } else
        {
            return new x(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        com.google.android.gms.a.a a1;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            a1 = b.a(parcel.readStrongBinder());
            break;
        }
        am am1;
        IBinder ibinder;
        if (parcel.readInt() != 0)
        {
            am1 = am.CREATOR.a(parcel);
        } else
        {
            am1 = null;
        }
        ibinder = a(a1, am1, parcel.readString(), bh.a(parcel.readStrongBinder()), parcel.readInt());
        parcel1.writeNoException();
        parcel1.writeStrongBinder(ibinder);
        return true;
    }
}
