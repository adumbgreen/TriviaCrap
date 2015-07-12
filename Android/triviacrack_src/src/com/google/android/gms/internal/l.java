// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ab, ax, aj

public class l
{

    public static final l a = new l();

    private l()
    {
    }

    public static l a()
    {
        return a;
    }

    public aj a(Context context, ab ab1)
    {
        Date date = ab1.a();
        long l1;
        String s;
        int i;
        Set set;
        java.util.List list;
        boolean flag;
        int j;
        android.location.Location location;
        android.os.Bundle bundle;
        boolean flag1;
        String s1;
        com.google.android.gms.ads.search.SearchAdRequest searchadrequest;
        ax ax1;
        if (date != null)
        {
            l1 = date.getTime();
        } else
        {
            l1 = -1L;
        }
        s = ab1.b();
        i = ab1.c();
        set = ab1.d();
        if (!set.isEmpty())
        {
            list = Collections.unmodifiableList(new ArrayList(set));
        } else
        {
            list = null;
        }
        flag = ab1.a(context);
        j = ab1.k();
        location = ab1.e();
        bundle = ab1.b(com/google/ads/mediation/admob/AdMobAdapter);
        flag1 = ab1.f();
        s1 = ab1.g();
        searchadrequest = ab1.h();
        if (searchadrequest != null)
        {
            ax1 = new ax(searchadrequest);
        } else
        {
            ax1 = null;
        }
        return new aj(4, l1, bundle, i, list, flag, j, flag1, s1, ax1, location, s, ab1.j());
    }

}
