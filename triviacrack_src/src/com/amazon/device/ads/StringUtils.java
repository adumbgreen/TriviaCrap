// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class StringUtils
{

    private static final String LOGTAG = com/amazon/device/ads/StringUtils.getSimpleName();

    private StringUtils()
    {
    }

    public static boolean containsRegEx(String s, String s1)
    {
        return Pattern.compile(s).matcher(s1).find();
    }

    protected static boolean doesExceptionContainLockedDatabaseMessage(Exception exception)
    {
        if (exception == null || exception.getMessage() == null)
        {
            return false;
        } else
        {
            return exception.getMessage().contains("database is locked");
        }
    }

    public static String getFirstMatch(String s, String s1)
    {
        Matcher matcher = Pattern.compile(s).matcher(s1);
        if (matcher.find())
        {
            return matcher.group();
        } else
        {
            return null;
        }
    }

    public static final boolean isNullOrEmpty(String s)
    {
        return s == null || s.equals("");
    }

    public static final boolean isNullOrWhiteSpace(String s)
    {
        return isNullOrEmpty(s) || s.trim().equals("");
    }

    public static String readStringFromInputStream(InputStream inputstream)
    {
        StringBuilder stringbuilder;
        byte abyte0[];
        if (inputstream == null)
        {
            return null;
        }
        stringbuilder = new StringBuilder();
        abyte0 = new byte[4096];
_L1:
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        stringbuilder.append(new String(abyte0, 0, i));
          goto _L1
        IOException ioexception1;
        ioexception1;
        Log.e(LOGTAG, "Unable to read the stream.");
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception2)
        {
            Log.e(LOGTAG, "IOException while trying to close the stream.");
        }
        return stringbuilder.toString();
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception3)
        {
            Log.e(LOGTAG, "IOException while trying to close the stream.");
        }
        if (true)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        Exception exception;
        exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception)
        {
            Log.e(LOGTAG, "IOException while trying to close the stream.");
        }
        throw exception;
    }

    public static String sha1(String s)
    {
        byte abyte0[];
        StringBuilder stringbuilder;
        int i;
        String s1;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
            messagedigest.update(s.getBytes());
            abyte0 = messagedigest.digest();
            stringbuilder = new StringBuilder();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return "";
        }
        i = 0;
        if (i >= abyte0.length)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append(Integer.toHexString(0x100 | 0xff & abyte0[i]).substring(1));
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_31;
_L1:
        s1 = stringbuilder.toString();
        return s1;
    }

}
