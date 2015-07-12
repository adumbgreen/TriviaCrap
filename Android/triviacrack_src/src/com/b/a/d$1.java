// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;


// Referenced classes of package com.b.a:
//            d

final class ject extends ThreadLocal
{

    protected StringBuilder a()
    {
        return new StringBuilder("Picasso-");
    }

    protected Object initialValue()
    {
        return a();
    }

    ject()
    {
    }
}
