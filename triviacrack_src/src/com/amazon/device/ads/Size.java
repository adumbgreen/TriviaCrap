// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


class Size
{

    private final int height;
    private final int width;

    public Size(int i, int j)
    {
        width = i;
        height = j;
    }

    public Size(String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        String as[] = s.split("x");
        if (as == null || as.length != 2) goto _L2; else goto _L3
_L3:
        int i;
        int j;
        j = Math.max(parseInt(as[0], 0), 0);
        i = Math.max(parseInt(as[1], 0), 0);
_L5:
        width = j;
        height = i;
        return;
_L2:
        i = 0;
        j = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static int parseInt(String s, int i)
    {
        int j;
        try
        {
            j = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return i;
        }
        return j;
    }

    public int getHeight()
    {
        return height;
    }

    public int getWidth()
    {
        return width;
    }

    public String toString()
    {
        return (new StringBuilder()).append(width).append("x").append(height).toString();
    }
}
