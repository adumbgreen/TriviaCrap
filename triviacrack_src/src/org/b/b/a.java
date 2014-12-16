// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.b;


public abstract class a
{

    public a()
    {
    }

    public static String a(String s, Throwable throwable)
    {
        if (throwable != null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            if (s != null)
            {
                stringbuilder.append(s).append("; ");
            }
            stringbuilder.append("nested exception is ").append(throwable);
            s = stringbuilder.toString();
        }
        return s;
    }
}
