// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


public final class Offset
{

    public static final Offset BEGINNING = new Offset("BEGINNING");
    private static final String BEGINNING_ENCODED = "BEGINNING";
    private String _encodedOffset;

    Offset(String s)
    {
        _encodedOffset = s;
    }

    public static Offset fromString(String s)
    {
        if ("BEGINNING".equals(s))
        {
            return BEGINNING;
        } else
        {
            return new Offset(s);
        }
    }

    public String toString()
    {
        return _encodedOffset;
    }

}
