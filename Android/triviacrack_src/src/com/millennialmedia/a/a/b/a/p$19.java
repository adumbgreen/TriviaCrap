// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p, q

final class 
    implements t
{

    public s a(e e, a a1)
    {
        Class class1 = a1.a();
        if (!java/lang/Enum.isAssignableFrom(class1) || class1 == java/lang/Enum)
        {
            return null;
        }
        if (!class1.isEnum())
        {
            class1 = class1.getSuperclass();
        }
        return new q(class1);
    }

    ()
    {
    }
}
