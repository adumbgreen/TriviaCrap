// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.b;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public class b
{

    private BufferedReader a;
    private boolean b;
    private char c;
    private char d;
    private int e;
    private boolean f;

    public b(Reader reader)
    {
        this(reader, ',', '"', 0);
    }

    public b(Reader reader, char c1, char c2, int i)
    {
        b = true;
        a = new BufferedReader(reader);
        c = c1;
        d = c2;
        e = i;
    }

    private String[] a(String s)
    {
        ArrayList arraylist;
        StringBuffer stringbuffer;
        boolean flag;
        String s1;
        if (s == null)
        {
            return null;
        }
        arraylist = new ArrayList();
        stringbuffer = new StringBuffer();
        flag = false;
        s1 = s;
_L6:
        if (!flag) goto _L2; else goto _L1
_L1:
        stringbuffer.append("\n");
        s1 = d();
        if (s1 != null) goto _L2; else goto _L3
_L3:
        arraylist.add(stringbuffer.toString());
        return (String[])(String[])arraylist.toArray(new String[0]);
_L2:
        StringBuffer stringbuffer1;
        boolean flag1;
        stringbuffer1 = stringbuffer;
        flag1 = flag;
        int i = 0;
        while (i < s1.length()) 
        {
            char c1 = s1.charAt(i);
            if (c1 == d)
            {
                if (flag1 && s1.length() > i + 1 && s1.charAt(i + 1) == d)
                {
                    stringbuffer1.append(s1.charAt(i + 1));
                    i++;
                } else
                {
                    if (!flag1)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    if (i > 2 && s1.charAt(i - 1) != c && s1.length() > i + 1 && s1.charAt(i + 1) != c)
                    {
                        stringbuffer1.append(c1);
                    }
                }
            } else
            if (c1 == c && !flag1)
            {
                arraylist.add(stringbuffer1.toString());
                stringbuffer1 = new StringBuffer();
            } else
            {
                stringbuffer1.append(c1);
            }
            i++;
        }
        if (flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer = stringbuffer1;
        if (true) goto _L3; else goto _L4
_L4:
        flag = flag1;
        stringbuffer = stringbuffer1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private String d()
    {
        if (!f)
        {
            for (int i = 0; i < e; i++)
            {
                a.readLine();
            }

            f = true;
        }
        String s = a.readLine();
        if (s == null)
        {
            b = false;
        }
        if (b)
        {
            return s;
        } else
        {
            return null;
        }
    }

    public String[] a()
    {
        String s = d();
        if (b)
        {
            return a(s);
        } else
        {
            return null;
        }
    }

    public void b()
    {
        a.close();
    }

    public ArrayList c()
    {
        ArrayList arraylist;
        new String[0];
        arraylist = new ArrayList();
_L1:
        String as[] = a();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        arraylist.add(as);
          goto _L1
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        arraylist = null;
        return arraylist;
    }
}
