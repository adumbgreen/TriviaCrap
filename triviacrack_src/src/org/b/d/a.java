// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.d;

import java.util.Collection;

// Referenced classes of package org.b.d:
//            j, c

public abstract class a
{

    public static void a(Class class1, Object obj)
    {
        a(class1, obj, "");
    }

    public static void a(Class class1, Object obj, String s)
    {
        a(class1, "Type to check against must not be null");
        if (!class1.isInstance(obj))
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(s).append("Object of class [");
            String s1;
            if (obj != null)
            {
                s1 = obj.getClass().getName();
            } else
            {
                s1 = "null";
            }
            throw new IllegalArgumentException(stringbuilder.append(s1).append("] must be an instance of ").append(class1).toString());
        } else
        {
            return;
        }
    }

    public static void a(Object obj, String s)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException(s);
        } else
        {
            return;
        }
    }

    public static void a(String s, String s1)
    {
        if (!j.a(s))
        {
            throw new IllegalArgumentException(s1);
        } else
        {
            return;
        }
    }

    public static void a(Collection collection, String s)
    {
        if (c.a(collection))
        {
            throw new IllegalArgumentException(s);
        } else
        {
            return;
        }
    }

    public static void a(boolean flag, String s)
    {
        if (!flag)
        {
            throw new IllegalArgumentException(s);
        } else
        {
            return;
        }
    }

    public static void b(String s, String s1)
    {
        if (!j.b(s))
        {
            throw new IllegalArgumentException(s1);
        } else
        {
            return;
        }
    }

    public static void b(boolean flag, String s)
    {
        if (!flag)
        {
            throw new IllegalStateException(s);
        } else
        {
            return;
        }
    }
}
