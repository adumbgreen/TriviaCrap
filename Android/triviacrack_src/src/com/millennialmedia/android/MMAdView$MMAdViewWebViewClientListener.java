// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMAdImpl

class it> extends it>
{

    public void onPageFinished(String s)
    {
        super.ageFinished(s);
        MMAdImpl mmadimpl = (MMAdImpl)a.get();
        if (mmadimpl != null && mmadimpl.h())
        {
            mmadimpl.i();
        }
    }

    (MMAdImpl mmadimpl)
    {
        super(mmadimpl);
    }
}
