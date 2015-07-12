// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

// Referenced classes of package com.millennialmedia.a.a.b:
//            a, b

final class e
    implements Serializable, WildcardType
{

    private final Type a;
    private final Type b;

    public e(Type atype[], Type atype1[])
    {
        boolean flag = true;
        super();
        boolean flag1;
        boolean flag2;
        if (atype1.length <= flag)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        com.millennialmedia.a.a.b.a.a(flag1);
        if (atype.length == flag)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        com.millennialmedia.a.a.b.a.a(flag2);
        if (atype1.length == flag)
        {
            com.millennialmedia.a.a.b.a.a(atype1[0]);
            com.millennialmedia.a.a.b.b.h(atype1[0]);
            if (atype[0] != java/lang/Object)
            {
                flag = false;
            }
            com.millennialmedia.a.a.b.a.a(flag);
            b = com.millennialmedia.a.a.b.b.d(atype1[0]);
            a = java/lang/Object;
            return;
        } else
        {
            com.millennialmedia.a.a.b.a.a(atype[0]);
            com.millennialmedia.a.a.b.b.h(atype[0]);
            b = null;
            a = com.millennialmedia.a.a.b.b.d(atype[0]);
            return;
        }
    }

    public boolean equals(Object obj)
    {
        return (obj instanceof WildcardType) && com.millennialmedia.a.a.b.b.a(this, (WildcardType)obj);
    }

    public Type[] getLowerBounds()
    {
        if (b != null)
        {
            Type atype[] = new Type[1];
            atype[0] = b;
            return atype;
        } else
        {
            return b.a;
        }
    }

    public Type[] getUpperBounds()
    {
        Type atype[] = new Type[1];
        atype[0] = a;
        return atype;
    }

    public int hashCode()
    {
        int i;
        if (b != null)
        {
            i = 31 + b.hashCode();
        } else
        {
            i = 1;
        }
        return i ^ 31 + a.hashCode();
    }

    public String toString()
    {
        if (b != null)
        {
            return (new StringBuilder()).append("? super ").append(com.millennialmedia.a.a.b.b.f(b)).toString();
        }
        if (a == java/lang/Object)
        {
            return "?";
        } else
        {
            return (new StringBuilder()).append("? extends ").append(com.millennialmedia.a.a.b.b.f(a)).toString();
        }
    }
}
