// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.h;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

// Referenced classes of package com.smartadserver.android.library.h:
//            c

public class b
{

    private static final String a = com/smartadserver/android/library/h/b.getSimpleName();

    public b()
    {
    }

    public static FileOutputStream a(Context context, String s, String s1)
    {
        int i = 0;
        if (context != null && s1 != null && s != null)
        {
            File file = context.getDir(s, 0);
            if (file != null && file.exists())
            {
                String as[];
                for (as = s1.split("/"); i < -1 + as.length;)
                {
                    File file1 = new File(file, as[i]);
                    if (!file1.exists())
                    {
                        file1.mkdir();
                    }
                    i++;
                    file = file1;
                }

                File file2 = new File(file, as[-1 + as.length]);
                FileOutputStream fileoutputstream;
                try
                {
                    fileoutputstream = new FileOutputStream(file2);
                }
                catch (FileNotFoundException filenotfoundexception)
                {
                    return null;
                }
                return fileoutputstream;
            }
        }
        return null;
    }

    public static String a(String s)
    {
        String s1;
        try
        {
            s1 = a(new URL(s));
        }
        catch (MalformedURLException malformedurlexception)
        {
            return null;
        }
        return s1;
    }

    public static String a(URL url)
    {
        return a(url, null);
    }

    public static String a(URL url, String as[])
    {
        int i = 0;
        URLConnection urlconnection;
        java.io.InputStream inputstream;
        urlconnection = url.openConnection();
        inputstream = urlconnection.getInputStream();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        if (as.length > 0)
        {
            as[0] = urlconnection.getURL().toString();
        }
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream, 4096);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(4096);
        byte abyte0[] = new byte[4096];
_L2:
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        int j;
        bytearrayoutputstream.write(abyte0, 0, i);
        j = bufferedinputstream.read(abyte0);
        i = j;
        if (true) goto _L2; else goto _L1
_L1:
        String s = null;
        Exception exception;
        Exception exception1;
        IOException ioexception;
        IOException ioexception1;
        IOException ioexception2;
        IOException ioexception3;
        IOException ioexception5;
        Exception exception2;
        if (bytearrayoutputstream != null)
        {
            try
            {
                s = bytearrayoutputstream.toString();
                bytearrayoutputstream.close();
            }
            catch (IOException ioexception4)
            {
                return s;
            }
        }
        if (bufferedinputstream == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        bufferedinputstream.close();
_L4:
        return s;
        ioexception1;
        bytearrayoutputstream = null;
        bufferedinputstream = null;
_L7:
        s = null;
        if (bytearrayoutputstream != null)
        {
            try
            {
                s = bytearrayoutputstream.toString();
                bytearrayoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2)
            {
                return s;
            }
        }
        if (bufferedinputstream == null) goto _L4; else goto _L3
_L3:
        bufferedinputstream.close();
        return s;
        exception;
        bufferedinputstream = null;
        exception1 = exception;
        bytearrayoutputstream = null;
_L6:
        if (bytearrayoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        bytearrayoutputstream.toString();
        bytearrayoutputstream.close();
        if (bufferedinputstream != null)
        {
            try
            {
                bufferedinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
        }
        throw exception1;
        exception2;
        exception1 = exception2;
        bytearrayoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception5;
        bytearrayoutputstream = null;
          goto _L7
        ioexception3;
          goto _L7
    }

    public static void a(Context context, String s, String s1, String s2)
    {
        FileOutputStream fileoutputstream;
        int i;
        fileoutputstream = null;
        i = 0;
        BufferedInputStream bufferedinputstream;
        URLConnection urlconnection = (new URL(s)).openConnection();
        urlconnection.setConnectTimeout(3000);
        urlconnection.setReadTimeout(3000);
        bufferedinputstream = new BufferedInputStream(urlconnection.getInputStream(), 4096);
        fileoutputstream = a(context, s1, s2);
        if (fileoutputstream != null) goto _L2; else goto _L1
_L1:
        throw new FileNotFoundException((new StringBuilder()).append("Can not write file to location :").append(s1).append("/").append(s2).toString());
        IOException ioexception;
        ioexception;
_L8:
        throw ioexception;
        Exception exception;
        exception;
_L6:
        byte abyte0[];
        int j;
        IOException ioexception2;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception1)
            {
                throw ioexception1;
            }
        }
        if (bufferedinputstream == null)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        bufferedinputstream.close();
        throw exception;
_L2:
        abyte0 = new byte[4096];
_L4:
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        fileoutputstream.write(abyte0, 0, i);
        j = bufferedinputstream.read(abyte0);
        i = j;
        if (true) goto _L4; else goto _L3
_L3:
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2)
            {
                throw ioexception2;
            }
        }
        if (bufferedinputstream == null)
        {
            break MISSING_BLOCK_LABEL_190;
        }
        bufferedinputstream.close();
        return;
        exception;
        fileoutputstream = null;
        bufferedinputstream = null;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception;
        fileoutputstream = null;
        bufferedinputstream = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static void a(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                a(afile[j]);
            }

        }
        file.delete();
    }

    public static boolean a(Context context, Serializable serializable, String s, String s1)
    {
        try
        {
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(new BufferedOutputStream(a(context, s, s1)));
            objectoutputstream.writeObject(serializable);
            objectoutputstream.flush();
            objectoutputstream.close();
        }
        catch (Exception exception)
        {
            return false;
        }
        return true;
    }

    public static Object b(Context context, String s, String s1)
    {
        File file2;
        int i = 0;
        File file = context.getDir(s, 0);
        if (file == null || !file.exists())
        {
            break MISSING_BLOCK_LABEL_156;
        }
        String as[];
        for (as = s1.split("/"); i < -1 + as.length;)
        {
            File file1 = new File(file, as[i]);
            i++;
            file = file1;
        }

        file2 = new File(file, as[-1 + as.length]);
        ObjectInputStream objectinputstream;
        Object obj1;
        objectinputstream = new ObjectInputStream(new BufferedInputStream(new FileInputStream(file2)));
        obj1 = objectinputstream.readObject();
        Object obj = obj1;
        objectinputstream.close();
        return obj;
        Exception exception;
        exception;
        Exception exception1;
        exception1 = exception;
        obj = null;
_L2:
        c.a(a, exception1.getMessage());
        return obj;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
    }

}
