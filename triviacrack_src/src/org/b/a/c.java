// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.a;

import org.b.d.b;

// Referenced classes of package org.b.a:
//            b

public class c extends org.b.a.b
{

    private transient Object a;
    private Class b;

    public c(Object obj, Class class1)
    {
        this(obj, class1, null);
    }

    public c(Object obj, Class class1, Throwable throwable)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("Failed to convert value of type '").append(org.b.d.b.a(obj)).append("'");
        String s;
        if (class1 != null)
        {
            s = (new StringBuilder()).append(" to required type '").append(org.b.d.b.a(class1)).append("'").toString();
        } else
        {
            s = "";
        }
        super(stringbuilder.append(s).toString(), throwable);
        a = obj;
        b = class1;
    }
}
