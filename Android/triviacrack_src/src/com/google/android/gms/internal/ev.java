// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            et, dt, dv, es

class ev
    implements et
{

    private IBinder a;

    ev(IBinder ibinder)
    {
        a = ibinder;
    }

    public dv a(dt dt1)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (dt1 == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        dt1.writeToParcel(parcel, 0);
_L3:
        dv dv2;
        a.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        if (parcel1.readInt() == 0)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        dv2 = dv.CREATOR.a(parcel1);
        dv dv1 = dv2;
_L4:
        parcel1.recycle();
        parcel.recycle();
        return dv1;
_L2:
        parcel.writeInt(0);
          goto _L3
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
        dv1 = null;
          goto _L4
    }

    public IBinder asBinder()
    {
        return a;
    }
}
