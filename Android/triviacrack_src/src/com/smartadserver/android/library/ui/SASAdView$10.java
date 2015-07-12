// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;


// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView, g

class a
    implements Runnable
{

    final String a;
    final SASAdView b;

    public void run()
    {
        b.j.a((new StringBuilder()).append("javascript:").append(a).toString());
    }

    (SASAdView sasadview, String s)
    {
        b = sasadview;
        a = s;
        super();
    }
}
