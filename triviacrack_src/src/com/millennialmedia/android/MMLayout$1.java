// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            MMLayout

class a
    implements Runnable
{

    final String a;
    final MMLayout b;

    public void run()
    {
        MMLayout.a(b, a);
    }

    (MMLayout mmlayout, String s)
    {
        b = mmlayout;
        a = s;
        super();
    }
}
