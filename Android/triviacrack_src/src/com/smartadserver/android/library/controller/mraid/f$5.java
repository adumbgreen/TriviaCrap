// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.os.Handler;
import com.smartadserver.android.library.ui.SASVideoView;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            f

class a
    implements Runnable
{

    final f a;

    public void run()
    {
        if (f.q(a) && f.d(a).getCurrentPosition() != 0)
        {
            f.a(a, f.d(a).getCurrentPosition());
        }
        if (f.r(a))
        {
            f.b(a, false);
            return;
        } else
        {
            f.s(a).postDelayed(this, 100L);
            return;
        }
    }

    (f f1)
    {
        a = f1;
        super();
    }
}
