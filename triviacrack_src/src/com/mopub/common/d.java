// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class d extends FilterOutputStream
{

    final DiskLruCache.Editor a;

    private d(DiskLruCache.Editor editor, OutputStream outputstream)
    {
        a = editor;
        super(outputstream);
    }

    d(DiskLruCache.Editor editor, OutputStream outputstream, DiskLruCache._cls1 _pcls1)
    {
        this(editor, outputstream);
    }

    public void close()
    {
        try
        {
            out.close();
            return;
        }
        catch (IOException ioexception)
        {
            DiskLruCache.Editor.a(a, true);
        }
    }

    public void flush()
    {
        try
        {
            out.flush();
            return;
        }
        catch (IOException ioexception)
        {
            DiskLruCache.Editor.a(a, true);
        }
    }

    public void write(int i)
    {
        try
        {
            out.write(i);
            return;
        }
        catch (IOException ioexception)
        {
            DiskLruCache.Editor.a(a, true);
        }
    }

    public void write(byte abyte0[], int i, int j)
    {
        try
        {
            out.write(abyte0, i, j);
            return;
        }
        catch (IOException ioexception)
        {
            DiskLruCache.Editor.a(a, true);
        }
    }
}
