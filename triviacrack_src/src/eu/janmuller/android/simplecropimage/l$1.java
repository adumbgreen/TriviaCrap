// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.app.ProgressDialog;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            l, MonitoredActivity

class a
    implements Runnable
{

    final l a;

    public void run()
    {
        l.a(a).b(a);
        if (l.b(a).getWindow() != null)
        {
            l.b(a).dismiss();
        }
    }

    toredActivity(l l1)
    {
        a = l1;
        super();
    }
}
