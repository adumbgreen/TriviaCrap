// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.lang.reflect.Method;

// Referenced classes of package com.millennialmedia.a.a.b:
//            v

final class nit> extends v
{

    final Method a;
    final int b;

    public Object a(Class class1)
    {
        Method method = a;
        Object aobj[] = new Object[2];
        aobj[0] = class1;
        aobj[1] = Integer.valueOf(b);
        return method.invoke(null, aobj);
    }

    (Method method, int i)
    {
        a = method;
        b = i;
        super();
    }
}
