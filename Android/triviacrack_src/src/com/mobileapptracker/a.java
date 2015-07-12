// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a
{

    private IvParameterSpec a;
    private SecretKeySpec b;
    private Cipher c;

    public a(String s, String s1)
    {
        a = new IvParameterSpec(s1.getBytes());
        b = new SecretKeySpec(s.getBytes(), "AES");
        try
        {
            c = Cipher.getInstance("AES/CBC/NoPadding");
            return;
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            return;
        }
        catch (NoSuchPaddingException nosuchpaddingexception)
        {
            nosuchpaddingexception.printStackTrace();
        }
    }

    public static String a(byte abyte0[])
    {
        String s;
        if (abyte0 == null)
        {
            s = null;
        } else
        {
            int i = abyte0.length;
            s = "";
            int j = 0;
            while (j < i) 
            {
                if ((0xff & abyte0[j]) < 16)
                {
                    s = (new StringBuilder()).append(s).append("0").append(Integer.toHexString(0xff & abyte0[j])).toString();
                } else
                {
                    s = (new StringBuilder()).append(s).append(Integer.toHexString(0xff & abyte0[j])).toString();
                }
                j++;
            }
        }
        return s;
    }

    private static String b(String s)
    {
        int i = 16 - s.length() % 16;
        for (int j = 0; j < i; j++)
        {
            s = (new StringBuilder()).append(s).append(' ').toString();
        }

        return s;
    }

    public byte[] a(String s)
    {
        if (s == null || s.length() == 0)
        {
            throw new Exception("Empty string");
        }
        byte abyte0[];
        try
        {
            c.init(1, b, a);
            abyte0 = c.doFinal(b(s).getBytes());
        }
        catch (Exception exception)
        {
            throw new Exception((new StringBuilder("[encrypt] ")).append(exception.getMessage()).toString());
        }
        return abyte0;
    }
}
