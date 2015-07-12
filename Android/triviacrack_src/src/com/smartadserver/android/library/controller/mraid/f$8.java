// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.widget.RelativeLayout;
import com.smartadserver.android.library.ui.SASVideoView;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            f

class a
    implements Runnable
{

    final f a;

    public void run()
    {
        if (f.o(a) != null)
        {
            f.i(a).removeView(f.o(a));
        }
        if (f.v(a) != null)
        {
            f.i(a).removeView(f.v(a));
        }
        if (f.p(a) != null)
        {
            f.i(a).removeView(f.p(a));
        }
        f.d(a).d();
    }

    (f f1)
    {
        a = f1;
        super();
    }
}
