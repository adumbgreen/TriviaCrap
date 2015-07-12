// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.j;


public class i
{

    public static String a(String s)
    {
        if (s != null && s.length() > 0)
        {
            StringBuilder stringbuilder = new StringBuilder(s);
            stringbuilder.setCharAt(0, Character.toUpperCase(stringbuilder.charAt(0)));
            return stringbuilder.toString();
        } else
        {
            return (new StringBuilder(2)).toString();
        }
    }
}
