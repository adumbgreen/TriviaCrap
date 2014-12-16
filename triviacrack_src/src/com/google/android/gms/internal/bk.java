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
//            bj, bl, am, m, 
//            aj, k, bn

public abstract class bk extends Binder
    implements bj
{

    public bk()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    public static bj a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        if (iinterface != null && (iinterface instanceof bj))
        {
            return (bj)iinterface;
        } else
        {
            return new bl(ibinder);
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
            parcel1.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            a a5 = b.a(parcel.readStrongBinder());
            am am2;
            aj aj4;
            if (parcel.readInt() != 0)
            {
                am2 = am.CREATOR.a(parcel);
            } else
            {
                am2 = null;
            }
            if (parcel.readInt() != 0)
            {
                aj4 = aj.CREATOR.a(parcel);
            } else
            {
                aj4 = null;
            }
            a(a5, am2, aj4, parcel.readString(), com.google.android.gms.internal.bn.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            a a4 = a();
            parcel1.writeNoException();
            IBinder ibinder = null;
            if (a4 != null)
            {
                ibinder = a4.asBinder();
            }
            parcel1.writeStrongBinder(ibinder);
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            a a3 = b.a(parcel.readStrongBinder());
            int l = parcel.readInt();
            aj aj3 = null;
            if (l != 0)
            {
                aj3 = aj.CREATOR.a(parcel);
            }
            a(a3, aj3, parcel.readString(), com.google.android.gms.internal.bn.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            b();
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c();
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            a a2 = b.a(parcel.readStrongBinder());
            am am1;
            aj aj2;
            if (parcel.readInt() != 0)
            {
                am1 = am.CREATOR.a(parcel);
            } else
            {
                am1 = null;
            }
            if (parcel.readInt() != 0)
            {
                aj2 = aj.CREATOR.a(parcel);
            } else
            {
                aj2 = null;
            }
            a(a2, am1, aj2, parcel.readString(), parcel.readString(), com.google.android.gms.internal.bn.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            a a1 = b.a(parcel.readStrongBinder());
            aj aj1;
            if (parcel.readInt() != 0)
            {
                aj1 = aj.CREATOR.a(parcel);
            } else
            {
                aj1 = null;
            }
            a(a1, aj1, parcel.readString(), parcel.readString(), com.google.android.gms.internal.bn.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            d();
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            e();
            parcel1.writeNoException();
            return true;
        }
    }
}
