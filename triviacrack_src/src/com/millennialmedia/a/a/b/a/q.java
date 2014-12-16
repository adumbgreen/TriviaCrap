// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.a.b;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.s;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

final class q extends s
{

    private final Map a;
    private final Map b;

    public q(Class class1)
    {
        String s1;
        String s2;
        a = new HashMap();
        b = new HashMap();
        Enum aenum[];
        int i;
        int j;
        Enum enum;
        b b1;
        try
        {
            aenum = (Enum[])class1.getEnumConstants();
            i = aenum.length;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            throw new AssertionError();
        }
        j = 0;
        if (j >= i) goto _L2; else goto _L1
_L1:
        enum = aenum[j];
        s1 = enum.name();
        b1 = (b)class1.getField(s1).getAnnotation(com/millennialmedia/a/a/a/b);
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        s2 = b1.a();
_L3:
        a.put(s2, enum);
        b.put(enum, s2);
        j++;
        break MISSING_BLOCK_LABEL_41;
_L2:
        return;
        s2 = s1;
          goto _L3
    }

    public Enum a(a a1)
    {
        if (a1.f() == com.millennialmedia.a.a.d.b.i)
        {
            a1.j();
            return null;
        } else
        {
            return (Enum)a.get(a1.h());
        }
    }

    public void a(c c1, Enum enum)
    {
        String s1;
        if (enum == null)
        {
            s1 = null;
        } else
        {
            s1 = (String)b.get(enum);
        }
        c1.b(s1);
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Enum)obj);
    }

    public Object b(a a1)
    {
        return a(a1);
    }
}
