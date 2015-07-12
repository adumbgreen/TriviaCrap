// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import com.smartadserver.android.library.ui.SASAdView;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            a

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        com.smartadserver.android.library.controller.mraid.a.a(a).setEnableStateChangeEvent(false);
        a.resize();
        com.smartadserver.android.library.controller.mraid.a.a(a).setEnableStateChangeEvent(true);
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
