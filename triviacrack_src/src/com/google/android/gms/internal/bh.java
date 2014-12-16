// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            bg, bi, bj

public abstract class bh extends Binder
    implements bg
{

    public bh()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static bg a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        if (iinterface != null && (iinterface instanceof bg))
        {
            return (bg)iinterface;
        } else
        {
            return new bi(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        bj bj1;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            bj1 = a(parcel.readString());
            parcel1.writeNoException();
            break;
        }
        IBinder ibinder;
        if (bj1 != null)
        {
            ibinder = bj1.asBinder();
        } else
        {
            ibinder = null;
        }
        parcel1.writeStrongBinder(ibinder);
        return true;
    }
}
