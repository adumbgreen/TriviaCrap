// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import java.lang.reflect.Field;

// Referenced classes of package com.millennialmedia.a.a:
//            d

public abstract class c extends Enum
    implements d
{

    public static final c a;
    public static final c b;
    public static final c c;
    public static final c d;
    public static final c e;
    private static final c f[];

    private c(String s, int i)
    {
        super(s, i);
    }


    private static String a(char c1, String s, int i)
    {
        if (i < s.length())
        {
            return (new StringBuilder()).append(c1).append(s.substring(i)).toString();
        } else
        {
            return String.valueOf(c1);
        }
    }

    static String a(String s)
    {
        return b(s);
    }

    static String a(String s, String s1)
    {
        return b(s, s1);
    }

    private static String b(String s)
    {
        StringBuilder stringbuilder;
        int i;
        char c1;
        stringbuilder = new StringBuilder();
        i = 0;
        c1 = s.charAt(0);
_L8:
        if (i < -1 + s.length() && !Character.isLetter(c1)) goto _L2; else goto _L1
_L1:
        if (i != s.length()) goto _L4; else goto _L3
_L3:
        s = stringbuilder.toString();
_L6:
        return s;
_L2:
        stringbuilder.append(c1);
        i++;
        c1 = s.charAt(i);
        continue; /* Loop/switch isn't completed */
_L4:
        if (Character.isUpperCase(c1)) goto _L6; else goto _L5
_L5:
        return stringbuilder.append(a(Character.toUpperCase(c1), s, i + 1)).toString();
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static String b(String s, String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < s.length(); i++)
        {
            char c1 = s.charAt(i);
            if (Character.isUpperCase(c1) && stringbuilder.length() != 0)
            {
                stringbuilder.append(s1);
            }
            stringbuilder.append(c1);
        }

        return stringbuilder.toString();
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/millennialmedia/a/a/c, s);
    }

    public static c[] values()
    {
        return (c[])f.clone();
    }

    static 
    {
        a = new c("IDENTITY", 0) {

            public String a(Field field)
            {
                return field.getName();
            }

        };
        b = new c("UPPER_CAMEL_CASE", 1) {

            public String a(Field field)
            {
                return c.a(field.getName());
            }

        };
        c = new c("UPPER_CAMEL_CASE_WITH_SPACES", 2) {

            public String a(Field field)
            {
                return c.a(c.a(field.getName(), " "));
            }

        };
        d = new c("LOWER_CASE_WITH_UNDERSCORES", 3) {

            public String a(Field field)
            {
                return c.a(field.getName(), "_").toLowerCase();
            }

        };
        e = new c("LOWER_CASE_WITH_DASHES", 4) {

            public String a(Field field)
            {
                return c.a(field.getName(), "-").toLowerCase();
            }

        };
        c ac[] = new c[5];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        ac[3] = d;
        ac[4] = e;
        f = ac;
    }
}
