// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.ib;
import java.util.Date;

// Referenced classes of package com.google.android.gms.ads:
//            AdRequest

public final class xtras
{

    private final ac a = new ac();

    static ac a(xtras xtras)
    {
        return xtras.a;
    }

    public a addCustomEventExtrasBundle(Class class1, Bundle bundle)
    {
        a.b(class1, bundle);
        return this;
    }

    public a addKeyword(String s)
    {
        a.a(s);
        return this;
    }

    public xtras addNetworkExtras(NetworkExtras networkextras)
    {
        a.a(networkextras);
        return this;
    }

    public xtras addNetworkExtrasBundle(Class class1, Bundle bundle)
    {
        a.a(class1, bundle);
        return this;
    }

    public a addTestDevice(String s)
    {
        a.b(s);
        return this;
    }

    public AdRequest build()
    {
        return new AdRequest(this, null);
    }

    public a setBirthday(Date date)
    {
        a.a(date);
        return this;
    }

    public a setContentUrl(String s)
    {
        ib.a(s, "Content URL must be non-null.");
        ib.a(s, "Content URL must be non-empty.");
        boolean flag;
        Object aobj[];
        if (s.length() <= 512)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(512);
        aobj[1] = Integer.valueOf(s.length());
        ib.b(flag, "Content URL must not exceed %d in length.  Provided length was %d.", aobj);
        a.c(s);
        return this;
    }

    public a setGender(int i)
    {
        a.a(i);
        return this;
    }

    public a setLocation(Location location)
    {
        a.a(location);
        return this;
    }

    public a tagForChildDirectedTreatment(boolean flag)
    {
        a.a(flag);
        return this;
    }

    public xtras()
    {
    }
}
