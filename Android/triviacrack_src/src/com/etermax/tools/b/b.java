// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.b;


class b
{

    public static int a = -999;
    private Class b;
    private Class c;
    private int d;

    public b(Class class1)
    {
        this(class1, a);
    }

    public b(Class class1, int i)
    {
        this(null, class1, i);
    }

    public b(Class class1, Class class2, int i)
    {
        b = class1;
        c = class2;
        d = i;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        b b1;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        b1 = (b)obj;
        if (b == null)
        {
            if (b1.b != null)
            {
                return false;
            }
        } else
        if (!b.equals(b1.b))
        {
            return false;
        }
        if (d != b1.d)
        {
            return false;
        }
        if (c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (b1.c == null) goto _L1; else goto _L3
_L3:
        return false;
        if (c.equals(b1.c)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int hashCode()
    {
        int i;
        int j;
        Class class1;
        int k;
        if (b == null)
        {
            i = 0;
        } else
        {
            i = b.hashCode();
        }
        j = 31 * (31 * (i + 31) + d);
        class1 = c;
        k = 0;
        if (class1 != null)
        {
            k = c.hashCode();
        }
        return j + k;
    }

}
