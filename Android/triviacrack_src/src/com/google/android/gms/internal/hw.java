// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;

// Referenced classes of package com.google.android.gms.internal:
//            hv, hx

public abstract class hw extends Binder
    implements hv
{

    public static hv a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        if (iinterface != null && (iinterface instanceof hv))
        {
            return (hv)iinterface;
        } else
        {
            return new hx(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        a a1;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            a1 = a(b.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
            parcel1.writeNoException();
            break;
        }
        IBinder ibinder;
        if (a1 != null)
        {
            ibinder = a1.asBinder();
        } else
        {
            ibinder = null;
        }
        parcel1.writeStrongBinder(ibinder);
        return true;
    }
}
