// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.a;

// Referenced classes of package com.google.android.gms.internal:
//            u, am, bg

class x
    implements u
{

    private IBinder a;

    x(IBinder ibinder)
    {
        a = ibinder;
    }

    public IBinder a(a a1, am am1, String s, bg bg1, int i)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (a1 == null) goto _L2; else goto _L1
_L1:
        IBinder ibinder = a1.asBinder();
_L5:
        parcel.writeStrongBinder(ibinder);
        if (am1 == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        am1.writeToParcel(parcel, 0);
_L6:
        parcel.writeString(s);
        IBinder ibinder1;
        ibinder1 = null;
        if (bg1 == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        ibinder1 = bg1.asBinder();
        IBinder ibinder2;
        parcel.writeStrongBinder(ibinder1);
        parcel.writeInt(i);
        a.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        ibinder2 = parcel1.readStrongBinder();
        parcel1.recycle();
        parcel.recycle();
        return ibinder2;
_L2:
        ibinder = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
          goto _L5
    }

    public IBinder asBinder()
    {
        return a;
    }
}
