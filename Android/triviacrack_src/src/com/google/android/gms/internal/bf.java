// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.NetworkExtras;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            bh, bs, bq, fx, 
//            bj

public final class bf extends bh
{

    private Map a;

    public bf()
    {
    }

    private bj b(String s)
    {
        try
        {
            Class class1 = Class.forName(s, false, com/google/android/gms/internal/bf.getClassLoader());
            if (com/google/ads/mediation/MediationAdapter.isAssignableFrom(class1))
            {
                MediationAdapter mediationadapter = (MediationAdapter)class1.newInstance();
                return new bs(mediationadapter, (NetworkExtras)a.get(mediationadapter.getAdditionalParametersType()));
            }
            if (com/google/android/gms/ads/mediation/MediationAdapter.isAssignableFrom(class1))
            {
                return new bq((com.google.android.gms.ads.mediation.MediationAdapter)class1.newInstance());
            } else
            {
                fx.e((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(s).append(" (not a valid adapter).").toString());
                throw new RemoteException();
            }
        }
        catch (Throwable throwable)
        {
            fx.e((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(s).append(". ").append(throwable.getMessage()).toString());
        }
        throw new RemoteException();
    }

    public bj a(String s)
    {
        return b(s);
    }

    public void a(Map map)
    {
        a = map;
    }
}
