// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


class ReflectionUtils
{

    ReflectionUtils()
    {
    }

    public static boolean isClassAvailable(String s)
    {
        try
        {
            Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return false;
        }
        return true;
    }
}
