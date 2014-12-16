// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;


// Referenced classes of package com.b.a:
//            d, ar

final class ject
    implements Runnable
{

    final ar a;

    public void run()
    {
        throw new IllegalStateException((new StringBuilder()).append("Transformation ").append(a.a()).append(" returned input Bitmap but recycled it.").toString());
    }

    ringBuilder(ar ar1)
    {
        a = ar1;
        super();
    }
}
