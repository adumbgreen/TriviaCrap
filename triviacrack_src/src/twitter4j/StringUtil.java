// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


class StringUtil
{

    private StringUtil()
    {
        throw new AssertionError();
    }

    public static String join(long al[])
    {
        StringBuilder stringbuilder = new StringBuilder(11 * al.length);
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            long l = al[j];
            if (stringbuilder.length() != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(l);
        }

        return stringbuilder.toString();
    }

    public static String join(String as[])
    {
        StringBuilder stringbuilder = new StringBuilder(11 * as.length);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s = as[j];
            if (stringbuilder.length() != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(s);
        }

        return stringbuilder.toString();
    }
}
