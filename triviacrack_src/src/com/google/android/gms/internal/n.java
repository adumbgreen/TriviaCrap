// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.AppEventListener;

// Referenced classes of package com.google.android.gms.internal:
//            z

public final class n extends z
{

    private final AppEventListener a;

    public n(AppEventListener appeventlistener)
    {
        a = appeventlistener;
    }

    public void a(String s, String s1)
    {
        a.onAppEvent(s, s1);
    }
}
