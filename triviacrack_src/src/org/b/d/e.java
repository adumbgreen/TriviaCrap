// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.d;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;

// Referenced classes of package org.b.d:
//            a

public abstract class e
{

    public static int a(InputStream inputstream, OutputStream outputstream)
    {
        int i;
        i = 0;
        org.b.d.a.a(inputstream, "No InputStream specified");
        org.b.d.a.a(outputstream, "No OutputStream specified");
        byte abyte0[] = new byte[4096];
_L1:
        int j = inputstream.read(abyte0);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        outputstream.write(abyte0, 0, j);
        i += j;
          goto _L1
        outputstream.flush();
        Exception exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception2) { }
        try
        {
            outputstream.close();
        }
        catch (IOException ioexception3)
        {
            return i;
        }
        return i;
        exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception) { }
        try
        {
            outputstream.close();
        }
        catch (IOException ioexception1) { }
        throw exception;
    }

    public static int a(Reader reader, Writer writer)
    {
        int i;
        i = 0;
        org.b.d.a.a(reader, "No Reader specified");
        org.b.d.a.a(writer, "No Writer specified");
        char ac[] = new char[4096];
_L1:
        int j = reader.read(ac);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        writer.write(ac, 0, j);
        i += j;
          goto _L1
        writer.flush();
        Exception exception;
        try
        {
            reader.close();
        }
        catch (IOException ioexception2) { }
        try
        {
            writer.close();
        }
        catch (IOException ioexception3)
        {
            return i;
        }
        return i;
        exception;
        try
        {
            reader.close();
        }
        catch (IOException ioexception) { }
        try
        {
            writer.close();
        }
        catch (IOException ioexception1) { }
        throw exception;
    }

    public static String a(Reader reader)
    {
        StringWriter stringwriter = new StringWriter();
        a(reader, ((Writer) (stringwriter)));
        return stringwriter.toString();
    }

    public static void a(String s, Writer writer)
    {
        org.b.d.a.a(s, "No input String specified");
        org.b.d.a.a(writer, "No Writer specified");
        writer.write(s);
        Exception exception;
        try
        {
            writer.close();
            return;
        }
        catch (IOException ioexception1)
        {
            return;
        }
        exception;
        try
        {
            writer.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    public static void a(byte abyte0[], OutputStream outputstream)
    {
        org.b.d.a.a(abyte0, "No input byte array specified");
        org.b.d.a.a(outputstream, "No OutputStream specified");
        outputstream.write(abyte0);
        Exception exception;
        try
        {
            outputstream.close();
            return;
        }
        catch (IOException ioexception1)
        {
            return;
        }
        exception;
        try
        {
            outputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    public static byte[] a(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(4096);
        a(inputstream, ((OutputStream) (bytearrayoutputstream)));
        return bytearrayoutputstream.toByteArray();
    }
}
