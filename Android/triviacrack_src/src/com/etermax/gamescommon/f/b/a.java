// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.f.b;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;
import java.util.Date;
import java.util.List;

public class a
{

    private final String a = "ChatHistory";
    private Long b;
    private byte c[];
    private Date d;
    private boolean e;
    private boolean f;
    private boolean g;
    private String h;
    private Long i;

    public a()
    {
        b = Long.valueOf(0L);
        d = new Date();
        e = false;
        f = false;
        g = false;
        h = "";
        i = Long.valueOf(0L);
    }

    public List a()
    {
        if (c.length == 0)
        {
            return null;
        }
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(c);
        List list;
        try
        {
            list = (List)(new ObjectInputStream(bytearrayinputstream)).readObject();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Log.e("ChatHistory", classnotfoundexception.getMessage());
            list = null;
        }
        catch (StreamCorruptedException streamcorruptedexception)
        {
            Log.e("ChatHistory", streamcorruptedexception.getMessage());
            list = null;
        }
        catch (IOException ioexception)
        {
            Log.e("ChatHistory", ioexception.getMessage());
            list = null;
        }
        catch (Exception exception)
        {
            Log.e("ChatHistory", exception.getMessage());
            list = null;
        }
        return list;
    }

    public void a(Long long1)
    {
        b = long1;
    }

    public void a(String s)
    {
        h = s;
    }

    public void a(Date date)
    {
        d = date;
    }

    public void a(List list)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(list);
            objectoutputstream.close();
        }
        catch (IOException ioexception)
        {
            Log.e("ChatHistory", ioexception.getMessage());
        }
        c = bytearrayoutputstream.toByteArray();
    }

    public void a(boolean flag)
    {
        e = flag;
    }

    public Date b()
    {
        return d;
    }

    public void b(Long long1)
    {
        i = long1;
    }

    public void b(boolean flag)
    {
        f = flag;
    }

    public void c(boolean flag)
    {
        g = flag;
    }
}
