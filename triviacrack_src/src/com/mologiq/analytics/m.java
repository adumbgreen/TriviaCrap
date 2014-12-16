// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.mologiq.analytics:
//            ag, FileUtils

class m
{

    private final File a;
    private final File b;

    m(File file)
    {
        a = file;
        b = new File((new StringBuilder(String.valueOf(file.getPath()))).append(".bak").toString());
    }

    FileOutputStream a()
    {
        FileOutputStream fileoutputstream;
        if (a.exists())
        {
            if (!b.exists())
            {
                if (!a.renameTo(b))
                {
                    ag.a((new StringBuilder("Couldn't rename file ")).append(a).append(" to backup file ").append(b).toString());
                }
            } else
            {
                a.delete();
            }
        }
        try
        {
            fileoutputstream = new FileOutputStream(a);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            File file = a.getParentFile();
            if (!file.mkdir())
            {
                throw new IOException((new StringBuilder("Couldn't create directory ")).append(a).toString());
            }
            FileUtils.setPermissions(file.getPath(), 505, -1, -1);
            FileOutputStream fileoutputstream1;
            try
            {
                fileoutputstream1 = new FileOutputStream(a);
            }
            catch (FileNotFoundException filenotfoundexception1)
            {
                throw new IOException((new StringBuilder("Couldn't create ")).append(a).toString());
            }
            return fileoutputstream1;
        }
        return fileoutputstream;
    }

    void a(FileOutputStream fileoutputstream)
    {
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        fileoutputstream.close();
        b.delete();
        return;
        IOException ioexception;
        ioexception;
        ag.a((new StringBuilder("finishWrite: Got exception:")).append(ioexception.getStackTrace().toString()).toString());
        return;
    }

    FileInputStream b()
    {
        if (b.exists())
        {
            a.delete();
            b.renameTo(a);
        }
        return new FileInputStream(a);
    }

    byte[] c()
    {
        int i;
        FileInputStream fileinputstream;
        i = 0;
        fileinputstream = b();
        byte abyte0[] = new byte[fileinputstream.available()];
_L1:
        int j = fileinputstream.read(abyte0, i, abyte0.length - i);
        int k;
        if (j <= 0)
        {
            fileinputstream.close();
            return abyte0;
        }
        k = j + i;
        byte abyte1[];
        int l = fileinputstream.available();
        if (l <= abyte0.length - k)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        abyte1 = new byte[l + k];
        System.arraycopy(abyte0, 0, abyte1, 0, k);
        abyte0 = abyte1;
        i = k;
          goto _L1
        Exception exception;
        exception;
        fileinputstream.close();
        throw exception;
        i = k;
          goto _L1
    }
}
