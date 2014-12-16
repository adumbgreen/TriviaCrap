// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            gc, ex, fx, fz

final class a
    implements gc
{

    final String a;

    public void a(fz fz1)
    {
        Object aobj[] = new Object[2];
        aobj[0] = "AFMA_buildAdURL";
        aobj[1] = a;
        String s = String.format("javascript:%s(%s);", aobj);
        fx.d((new StringBuilder()).append("About to execute: ").append(s).toString());
        fz1.loadUrl(s);
    }

    (String s)
    {
        a = s;
        super();
    }
}
