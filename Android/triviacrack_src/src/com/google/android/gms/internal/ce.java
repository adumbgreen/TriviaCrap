// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            fw, cd

final class ce
{

    private final Runnable a;
    private volatile boolean b;

    public ce(cd cd)
    {
        b = false;
        a = new Runnable(cd) {

            final cd a;
            final ce b;
            private final WeakReference c;

            public void run()
            {
                cd cd1 = (cd)c.get();
                if (!ce.a(b) && cd1 != null)
                {
                    cd1.e();
                    b.b();
                }
            }

            
            {
                b = ce.this;
                a = cd1;
                super();
                c = new WeakReference(a);
            }
        };
    }

    static boolean a(ce ce1)
    {
        return ce1.b;
    }

    public void a()
    {
        b = true;
        fw.a.removeCallbacks(a);
    }

    public void b()
    {
        fw.a.postDelayed(a, 250L);
    }
}
