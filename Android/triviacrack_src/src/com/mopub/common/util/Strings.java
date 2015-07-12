// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import java.io.InputStream;

public class Strings
{

    public Strings()
    {
    }

    public static String fromStream(InputStream inputstream)
    {
        StringBuffer stringbuffer = new StringBuffer();
        byte abyte0[] = new byte[4096];
        for (int i = 0; i != -1; i = inputstream.read(abyte0))
        {
            stringbuffer.append(new String(abyte0, 0, i));
        }

        inputstream.close();
        return stringbuffer.toString();
    }

    public static boolean isEmpty(String s)
    {
        while (s == null || s.length() != 0) 
        {
            return false;
        }
        return true;
    }
}
