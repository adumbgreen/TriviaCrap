// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;

// Referenced classes of package com.millennialmedia.android:
//            MMAdImpl, MMInterstitial, MMAd

class a extends MMAdImpl
{

    final MMInterstitial a;

    MMAd d()
    {
        return r();
    }

    MMInterstitial r()
    {
        return a;
    }

    public (MMInterstitial mminterstitial, Context context)
    {
        a = mminterstitial;
        super(context);
    }
}
