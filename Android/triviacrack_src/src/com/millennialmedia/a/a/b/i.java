// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.math.BigInteger;

public final class i extends Number
{

    private final String a;

    public i(String s)
    {
        a = s;
    }

    public double doubleValue()
    {
        return Double.parseDouble(a);
    }

    public float floatValue()
    {
        return Float.parseFloat(a);
    }

    public int intValue()
    {
        int j;
        try
        {
            j = Integer.parseInt(a);
        }
        catch (NumberFormatException numberformatexception)
        {
            long l;
            try
            {
                l = Long.parseLong(a);
            }
            catch (NumberFormatException numberformatexception1)
            {
                return (new BigInteger(a)).intValue();
            }
            return (int)l;
        }
        return j;
    }

    public long longValue()
    {
        long l;
        try
        {
            l = Long.parseLong(a);
        }
        catch (NumberFormatException numberformatexception)
        {
            return (new BigInteger(a)).longValue();
        }
        return l;
    }

    public String toString()
    {
        return a;
    }
}
