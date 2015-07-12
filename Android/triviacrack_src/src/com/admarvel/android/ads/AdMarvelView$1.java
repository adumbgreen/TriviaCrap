// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import com.admarvel.android.util.e;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, ab

final class a
    implements Runnable
{

    final Activity a;

    public void run()
    {
        ab.l(a);
        e.c(a);
    }

    (Activity activity)
    {
        a = activity;
        super();
    }
}
