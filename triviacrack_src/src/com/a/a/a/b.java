// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.a.a.a:
//            a, c

public abstract class b extends Binder
    implements a
{

    public static a a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        if (iinterface != null && (iinterface instanceof a))
        {
            return (a)iinterface;
        } else
        {
            return new c(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.android.vending.billing.IInAppBillingService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            int i1 = a(parcel.readInt(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeInt(i1);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            int l = parcel.readInt();
            String s = parcel.readString();
            String s1 = parcel.readString();
            Bundle bundle2;
            Bundle bundle3;
            if (parcel.readInt() != 0)
            {
                bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle2 = null;
            }
            bundle3 = a(l, s, s1, bundle2);
            parcel1.writeNoException();
            if (bundle3 != null)
            {
                parcel1.writeInt(1);
                bundle3.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            Bundle bundle1 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            if (bundle1 != null)
            {
                parcel1.writeInt(1);
                bundle1.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            Bundle bundle = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            if (bundle != null)
            {
                parcel1.writeInt(1);
                bundle.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            int k = b(parcel.readInt(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeInt(k);
            return true;
        }
    }
}
