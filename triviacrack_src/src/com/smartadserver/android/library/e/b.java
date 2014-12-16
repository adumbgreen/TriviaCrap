// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.e;

import com.smartadserver.android.library.a.a;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b
{

    public static String[] a(String s)
    {
        ArrayList arraylist = new ArrayList();
        String s1 = com.smartadserver.android.library.h.b.a(s);
        if (s1 == null)
        {
            throw new a((new StringBuilder()).append("Can not get cache manifest file from URL: ").append(s).toString());
        }
        String as[] = s1.split("\\r?\\n");
        int i = 0;
        boolean flag = true;
        boolean flag1 = false;
        while (i < as.length) 
        {
            String s2 = as[i];
            boolean flag2;
            boolean flag3;
            if (s2.startsWith("#"))
            {
                flag2 = flag;
                flag3 = flag1;
            } else
            if (s2.equals(""))
            {
                flag2 = flag;
                flag3 = flag1;
            } else
            if (s2.contains("CACHE MANIFEST"))
            {
                flag2 = flag;
                flag3 = true;
            } else
            if (s2.contains("NETWORK:"))
            {
                flag3 = flag1;
                flag2 = false;
            } else
            if (s2.contains("FALLBACK:"))
            {
                flag3 = flag1;
                flag2 = false;
            } else
            if (s2.contains("CACHE:"))
            {
                flag2 = true;
                flag3 = flag1;
            } else
            {
                if (flag1 && flag)
                {
                    String s3 = s2.trim();
                    if (s3.startsWith("/"))
                    {
                        s3 = s3.substring(1, -1 + s3.length());
                    }
                    arraylist.add(s3);
                }
                flag2 = flag;
                flag3 = flag1;
            }
            i++;
            flag1 = flag3;
            flag = flag2;
        }
        if (!flag1)
        {
            throw new a((new StringBuilder()).append("Missing \"CACHE MANIFEST\" declaration in manifest file at: ").append(s).toString());
        } else
        {
            return (String[])arraylist.toArray(new String[arraylist.size()]);
        }
    }

    public static String b(String s)
    {
        Matcher matcher = Pattern.compile("<html[^>]*manifest=['\"]([^'\"]+)['\"][^>]*").matcher(s);
        boolean flag = matcher.find();
        String s1 = null;
        if (flag)
        {
            s1 = matcher.group(1);
        }
        return s1;
    }

    public static String c(String s)
    {
        int i = s.indexOf(" manifest=");
        String s1 = b(s);
        int j = 1 + (s.indexOf(s1) + s1.length());
        return (new StringBuilder()).append(s.substring(0, i)).append(s.substring(j)).toString();
    }
}
