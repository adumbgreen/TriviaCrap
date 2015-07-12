// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class c
{

    private String a[];
    private String b;

    public c(String as[], String s)
    {
        a = as;
        b = s;
    }

    public void a()
    {
        int i = 0;
        ZipOutputStream zipoutputstream;
        byte abyte0[];
        zipoutputstream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(b)));
        abyte0 = new byte[2048];
_L2:
        BufferedInputStream bufferedinputstream;
        if (i >= a.length)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        bufferedinputstream = new BufferedInputStream(new FileInputStream(a[i]), 2048);
        zipoutputstream.putNextEntry(new ZipEntry(a[i].substring(1 + a[i].lastIndexOf("/"))));
_L1:
        int j = bufferedinputstream.read(abyte0, 0, 2048);
label0:
        {
            if (j == -1)
            {
                break label0;
            }
            try
            {
                zipoutputstream.write(abyte0, 0, j);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return;
            }
        }
          goto _L1
        bufferedinputstream.close();
        i++;
          goto _L2
        zipoutputstream.close();
        return;
    }
}
