// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            et, ev, dt, er, 
//            dv

public abstract class eu extends Binder
    implements et
{

    public eu()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    public static et a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (iinterface != null && (iinterface instanceof et))
        {
            return (et)iinterface;
        } else
        {
            return new ev(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.request.IAdRequestService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
            break;
        }
        dt dt1;
        dv dv1;
        if (parcel.readInt() != 0)
        {
            dt1 = dt.CREATOR.a(parcel);
        } else
        {
            dt1 = null;
        }
        dv1 = a(dt1);
        parcel1.writeNoException();
        if (dv1 != null)
        {
            parcel1.writeInt(1);
            dv1.writeToParcel(parcel1, 1);
        } else
        {
            parcel1.writeInt(0);
        }
        return true;
    }
}
