// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.j;

import android.content.Context;
import com.etermax.tools.a;
import com.etermax.tools.b;

public class e
{

    private static final String a[] = {
        "com.etermax.apalabrados.pro", "com.etermax.wordcrack.pro", "com.etermax.preguntados.pro", "com.etermax.triviafans.fcb.pro", "com.etermax.triviafans.realmadrid.pro"
    };
    private static final String b[] = {
        "com.etermax.apalabrados.lite", "com.etermax.wordcrack.lite", "com.etermax.bingocrack.lite", "com.etermax.preguntados.lite", "com.etermax.triviafans.fcb.lite", "com.etermax.triviafans.realmadrid.lite"
    };
    private static final String c[] = {
        "com.etermax.bingocrack.pro"
    };
    private static final String d[] = {
        "com.etermax.wordcrack.lite", "com.etermax.wordcrack.pro", "com.etermax.bingocrack.lite", "com.etermax.bingocrack.pro"
    };
    private static final String e[] = {
        "com.etermax.wordcrack.lite", "com.etermax.wordcrack.pro", "com.etermax.apalabrados.pro", "com.etermax.bingocrack.lite", "com.etermax.bingocrack.pro", "com.etermax.preguntados.lite", "com.etermax.preguntados.pro", "com.etermax.triviafans.realmadrid.lite", "com.etermax.triviafans.realmadrid.pro", "com.etermax.triviafans.fcb.lite", 
        "com.etermax.triviafans.fcb.pro"
    };
    private static final String f[] = {
        "com.etermax.wordcrack.lite", "com.etermax.wordcrack.pro", "com.etermax.apalabrados.pro", "com.etermax.bingocrack.lite", "com.etermax.bingocrack.pro", "com.etermax.preguntados.lite", "com.etermax.preguntados.pro", "com.etermax.triviafans.realmadrid.lite", "com.etermax.triviafans.realmadrid.pro", "com.etermax.triviafans.fcb.lite", 
        "com.etermax.triviafans.fcb.pro"
    };

    public static String a(String s)
    {
        return a(s, a);
    }

    private static String a(String s, String as[])
    {
        if (s.endsWith(".pro") || s.endsWith(".lite") || s.endsWith("."))
        {
            s = s.substring(0, s.lastIndexOf('.'));
        }
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s1 = as[j];
            if (s1.startsWith(s))
            {
                return s1;
            }
        }

        return null;
    }

    public static boolean a(Context context, String s)
    {
        return context.getPackageName().startsWith(s);
    }

    public static boolean a(b b1, a a1, String s)
    {
        String as[];
        if (a1.d().equals("BLACKBERRY"))
        {
            as = f;
        } else
        {
            String s1 = b1.u();
            if (s1.equals("market_amazon"))
            {
                as = d;
            } else
            if (s1.equals("market_samsung"))
            {
                as = e;
            } else
            {
                as = c;
            }
        }
        return !a(as, s);
    }

    private static boolean a(String as[], String s)
    {
        int i = as.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    if (!as[j].equals(s))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    public static String b(String s)
    {
        return a(s, b);
    }

}
