// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.k;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

// Referenced classes of package com.millennialmedia.a.a.b:
//            q, f

class a
    implements q
{

    final Type a;
    final f b;

    public Object a()
    {
        if (a instanceof ParameterizedType)
        {
            Type type = ((ParameterizedType)a).getActualTypeArguments()[0];
            if (type instanceof Class)
            {
                return EnumSet.noneOf((Class)type);
            } else
            {
                throw new k((new StringBuilder()).append("Invalid EnumSet type: ").append(a.toString()).toString());
            }
        } else
        {
            throw new k((new StringBuilder()).append("Invalid EnumSet type: ").append(a.toString()).toString());
        }
    }

    dType(f f1, Type type)
    {
        b = f1;
        a = type;
        super();
    }
}
