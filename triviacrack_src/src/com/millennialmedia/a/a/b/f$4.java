// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.lang.reflect.Type;

// Referenced classes of package com.millennialmedia.a.a.b:
//            q, f, v

class b
    implements q
{

    final Class a;
    final Type b;
    final f c;
    private final v d = v.a();

    public Object a()
    {
        Object obj;
        try
        {
            obj = d.a(a);
        }
        catch (Exception exception)
        {
            throw new RuntimeException((new StringBuilder()).append("Unable to invoke no-args constructor for ").append(b).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), exception);
        }
        return obj;
    }

    (f f1, Class class1, Type type)
    {
        c = f1;
        a = class1;
        b = type;
        super();
    }
}
