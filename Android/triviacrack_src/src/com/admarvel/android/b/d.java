// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.b;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class d
{

    public static ArrayList a(String s, String s1)
    {
        ArrayList arraylist;
        String s2;
        ZipInputStream zipinputstream;
        String s3;
        Exception exception2;
        ZipEntry zipentry;
        String s5;
        arraylist = new ArrayList();
        s2 = "";
        Exception exception1;
        String s4;
        File file1;
        try
        {
            File file = new File(s1);
            if (!file.isDirectory())
            {
                file.mkdirs();
            }
            zipinputstream = new ZipInputStream(new FileInputStream(s));
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return null;
        }
_L6:
        zipentry = zipinputstream.getNextEntry();
        if (zipentry == null) goto _L2; else goto _L1
_L1:
        s5 = (new StringBuilder()).append(s1).append("/").append(zipentry.getName()).toString();
        arraylist.add(s5);
        if (zipentry.isDirectory())
        {
            file1 = new File(s5);
            if (!file1.isDirectory())
            {
                file1.mkdirs();
            }
            break MISSING_BLOCK_LABEL_52;
        }
          goto _L3
        exception1;
        s3 = s2;
        exception2 = exception1;
_L8:
        if (s3.length() > 0)
        {
            s4 = (new StringBuilder()).append("mv ").append(s3).append(".tmp").append(" ").append(s3).toString();
            Runtime.getRuntime().exec(s4);
        }
        if (!(new File(s)).delete())
        {
            throw new Exception("Error in deleting Zip file ");
        }
          goto _L4
_L3:
        boolean flag;
        String s6 = zipentry.getName().substring(1 + zipentry.getName().lastIndexOf("."), zipentry.getName().length());
        if (s6.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_316;
        }
        flag = s6.equalsIgnoreCase("xml");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_316;
        }
        String s7 = (new StringBuilder()).append(s5).append(".tmp").toString();
        s2 = s5;
        s5 = s7;
        FileOutputStream fileoutputstream;
        fileoutputstream = new FileOutputStream(s5, false);
        fileoutputstream.toString().length();
        byte abyte0[] = new byte[8192];
_L5:
        int i = zipinputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_382;
        }
        fileoutputstream.write(abyte0, 0, i);
          goto _L5
        Exception exception3;
        exception3;
        fileoutputstream.close();
        throw exception3;
        zipinputstream.closeEntry();
        fileoutputstream.close();
          goto _L6
_L2:
        if (s2.length() > 0)
        {
            String s8 = (new StringBuilder()).append("mv ").append(s2).append(".tmp").append(" ").append(s2).toString();
            Runtime.getRuntime().exec(s8);
        }
        if (!(new File(s)).delete())
        {
            throw new Exception("Error in deleting Zip file ");
        }
          goto _L7
_L4:
        throw exception2;
_L7:
        return arraylist;
        exception2;
        s3 = s5;
          goto _L8
    }

    public static void a(File file)
    {
        int i;
        if (file.isDirectory())
        {
            String as[];
            File file1;
            try
            {
                as = file.list();
            }
            catch (NullPointerException nullpointerexception)
            {
                Logging.log(nullpointerexception.getMessage());
                return;
            }
            if (as == null)
            {
                return;
            }
            i = 0;
            continue; /* Loop/switch isn't completed */
        }
          goto _L1
_L8:
        if (i >= as.length) goto _L3; else goto _L2
_L2:
        file1 = new File(file, as[i]);
        if (!file1.isDirectory()) goto _L5; else goto _L4
_L4:
        a(file1);
        file1.delete();
          goto _L6
_L5:
        file1.delete();
          goto _L6
_L3:
        file.delete();
_L1:
        return;
_L6:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
