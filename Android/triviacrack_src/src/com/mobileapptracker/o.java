// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;

// Referenced classes of package com.mobileapptracker:
//            h, i

final class o
    implements Runnable
{

    final Activity a;
    final h b;

    o(h h1, Activity activity)
    {
        b = h1;
        a = activity;
        super();
    }

    public final void run()
    {
        b.j.Q(a.getCallingPackage());
        Intent intent = a.getIntent();
        if (intent != null)
        {
            Uri uri = intent.getData();
            if (uri != null)
            {
                b.j.R(uri.toString());
            }
        }
    }
}
