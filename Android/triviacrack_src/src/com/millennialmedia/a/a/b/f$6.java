// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

// Referenced classes of package com.millennialmedia.a.a.b:
//            q, f

class a
    implements q
{

    final Constructor a;
    final f b;

    public Object a()
    {
        Object obj;
        try
        {
            obj = a.newInstance(null);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Failed to invoke ").append(a).append(" with no args").toString(), instantiationexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Failed to invoke ").append(a).append(" with no args").toString(), invocationtargetexception.getTargetException());
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
        return obj;
    }

    on(f f1, Constructor constructor)
    {
        b = f1;
        a = constructor;
        super();
    }
}
