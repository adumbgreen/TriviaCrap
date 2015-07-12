// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.a;

import android.content.Context;
import android.os.Environment;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.crypto.Cipher;
import org.b.c.a.i;
import org.b.c.c;
import org.b.c.f;
import org.b.c.h;
import org.b.d.e;

public class g
{

    Context a;
    private Cipher b;

    public g()
    {
        b = null;
    }

    private StringBuilder a(h h1, byte abyte0[])
    {
        c c1 = h1.d();
        String s = c1.a("Cookie");
        String s1 = c1.a("User-Agent");
        String s2 = c1.a("Eter-Agent");
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append("[").append(h1.b()).append("] ").append(h1.c()).append("\n").toString());
        if (s != null)
        {
            stringbuilder.append((new StringBuilder()).append("Cookie: ").append(s).append("\n").toString());
        }
        if (s1 != null)
        {
            stringbuilder.append((new StringBuilder()).append("User-Agent: ").append(s1).append("\n").toString());
        }
        if (s2 != null)
        {
            stringbuilder.append((new StringBuilder()).append("Eter-Agent: ").append(s2).append("\n").toString());
        }
        if (h1.b().equals(f.e) || h1.b().equals(f.b))
        {
            stringbuilder.append((new StringBuilder()).append("Request Body: ").append(new String(abyte0)).append("\n").toString());
        }
        return stringbuilder;
    }

    private void a(String s)
    {
        byte abyte0[];
        try
        {
            if (b == null)
            {
                break MISSING_BLOCK_LABEL_22;
            }
            abyte0 = b(s);
        }
        catch (Exception exception)
        {
            return;
        }
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        a(abyte0);
    }

    private void a(byte abyte0[])
    {
        try
        {
            if (d())
            {
                FileOutputStream fileoutputstream = new FileOutputStream(b(), true);
                PrintWriter printwriter = new PrintWriter(fileoutputstream);
                SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS");
                printwriter.print((new StringBuilder()).append(simpledateformat.format(new Date())).append(" - ").toString());
                printwriter.flush();
                fileoutputstream.write(abyte0);
                fileoutputstream.write(10);
                printwriter.close();
                fileoutputstream.close();
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private byte[] a(byte abyte0[], int j)
    {
        int k = 0;
        byte[] _tmp = new byte[0];
        byte abyte1[] = new byte[0];
        char c1;
        byte abyte2[];
        if (j == 1)
        {
            c1 = 'd';
        } else
        {
            c1 = '\200';
        }
        abyte2 = new byte[c1];
        while (k < abyte0.length) 
        {
            if (k > 0 && k % c1 == 0)
            {
                abyte1 = a(abyte1, b.doFinal(abyte2));
                int l;
                if (k + c1 > abyte0.length)
                {
                    l = abyte0.length - k;
                } else
                {
                    l = c1;
                }
                abyte2 = new byte[l];
            }
            abyte2[k % c1] = abyte0[k];
            k++;
        }
        return a(abyte1, b.doFinal(abyte2));
    }

    private static byte[] a(byte abyte0[], byte abyte1[])
    {
        byte abyte2[] = new byte[abyte0.length + abyte1.length];
        int j = 0;
        int l;
        do
        {
            int k = abyte0.length;
            l = 0;
            if (j >= k)
            {
                break;
            }
            abyte2[j] = abyte0[j];
            j++;
        } while (true);
        for (; l < abyte1.length; l++)
        {
            abyte2[l + abyte0.length] = abyte1[l];
        }

        return abyte2;
    }

    private byte[] b(String s)
    {
        byte abyte0[];
        try
        {
            abyte0 = Base64.encode(a(s.getBytes("UTF-8"), 1), 2);
        }
        catch (Exception exception)
        {
            return null;
        }
        return abyte0;
    }

    private static PublicKey c(String s)
    {
        ObjectInputStream objectinputstream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(s.getBytes(), 2)));
        PublicKey publickey;
        RSAPublicKeySpec rsapublickeyspec = new RSAPublicKeySpec((BigInteger)objectinputstream.readObject(), (BigInteger)objectinputstream.readObject());
        publickey = KeyFactory.getInstance("RSA").generatePublic(rsapublickeyspec);
        objectinputstream.close();
        return publickey;
        Exception exception1;
        exception1;
        throw new RuntimeException("Spurious serialisation error", exception1);
        Exception exception;
        exception;
        objectinputstream.close();
        throw exception;
    }

    private boolean d()
    {
        boolean flag = true;
        File file = b();
        if (file.length() >= 0x7d000L)
        {
            File file1 = c();
            if (file1.exists())
            {
                flag = file1.delete();
            }
            if (flag)
            {
                file.renameTo(file1);
            }
        }
        return flag;
    }

    void a()
    {
        try
        {
            b = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            b.init(1, c("rO0ABXNyABRqYXZhLm1hdGguQmlnSW50ZWdlcoz8nx+pO/sdAwAGSQAIYml0Q291bnRJAAliaXRMZW5ndGhJABNmaXJzdE5vbnplcm9CeXRlTnVtSQAMbG93ZXN0U2V0Qml0SQAGc2lnbnVtWwAJbWFnbml0dWRldAACW0J4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHD///////////////7////+AAAAAXVyAAJbQqzzF/gGCFTgAgAAeHAAAACAj+rPBELRVd+4lDl8yA/FyDo6CHcn/U42yHk3NNCWDnVdAfg1eBol/hpNibqKYx7geMWu+hxzjR3CoMox7oE2jv0nJxbgv2jk8O8MNeOW+TAIrs5ZuscL77ZuLuMfmPIHpgQCl3yg+0nqMgJRMqi75BKJ8LIh10DlXx7lv3JP9wt4c3EAfgAA///////////////+/////gAAAAF1cQB+AAQAAAADAQABeA=="));
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void a(h h1, byte abyte0[], IOException ioexception)
    {
        StringBuilder stringbuilder = a(h1, abyte0);
        stringbuilder.append((new StringBuilder()).append("IOException: ").append(ioexception.getMessage()).append("\n").toString());
        a(stringbuilder.toString());
    }

    public void a(h h1, byte abyte0[], i j, long l)
    {
        StringBuilder stringbuilder = a(h1, abyte0);
        String s1;
        try
        {
            String s = new String(e.a(j.e()));
            long l1 = System.currentTimeMillis() - l;
            stringbuilder.append((new StringBuilder()).append("[").append(j.a().a()).append("][").append(l1).append("ms] Response Body: ").append(s).append("\n").toString());
        }
        catch (IOException ioexception)
        {
            stringbuilder.append((new StringBuilder()).append("Response body IOException: ").append(ioexception.getMessage()).append("\n").toString());
        }
        s1 = j.d().a("Set-Cookie");
        if (s1 != null)
        {
            stringbuilder.append((new StringBuilder()).append("Set-Cookie: ").append(s1).append("\n").toString());
        }
        a(stringbuilder.toString());
    }

    public File b()
    {
        return new File(Environment.getExternalStorageDirectory(), "requests.log");
    }

    public File c()
    {
        return new File(Environment.getExternalStorageDirectory(), "requests.2.log");
    }
}
