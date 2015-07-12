// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.b.d.a;

// Referenced classes of package org.b.e.b:
//            k

class l
{

    private final List a;
    private final StringBuilder b;

    private l(String s)
    {
        a = new LinkedList();
        b = new StringBuilder();
        org.b.d.a.b(s, "'uriTemplate' must not be null");
        Matcher matcher = org.b.e.b.k.a().matcher(s);
        int i = 0;
        while (matcher.find()) 
        {
            b.append(a(s, i, matcher.start()));
            String s1 = matcher.group(1);
            int i1 = s1.indexOf(':');
            if (i1 == -1)
            {
                b.append("(.*)");
                a.add(s1);
            } else
            {
                if (i1 + 1 == s1.length())
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("No custom regular expression specified after ':' in \"").append(s1).append("\"").toString());
                }
                String s2 = s1.substring(i1 + 1, s1.length());
                b.append('(');
                b.append(s2);
                b.append(')');
                String s3 = s1.substring(0, i1);
                a.add(s3);
            }
            i = matcher.end();
        }
        b.append(a(s, i, s.length()));
        int j = -1 + b.length();
        if (j >= 0 && b.charAt(j) == '/')
        {
            b.deleteCharAt(j);
        }
    }

    l(String s, k._cls1 _pcls1)
    {
        this(s);
    }

    private String a(String s, int i, int j)
    {
        if (i == j)
        {
            return "";
        } else
        {
            return Pattern.quote(s.substring(i, j));
        }
    }

    private List a()
    {
        return Collections.unmodifiableList(a);
    }

    static List a(l l1)
    {
        return l1.a();
    }

    private Pattern b()
    {
        return Pattern.compile(b.toString());
    }

    static Pattern b(l l1)
    {
        return l1.b();
    }
}
