// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelXMLReader

public class AdMarvelXMLElement
{

    private String a;
    private LinkedHashMap b;
    private StringBuilder c;
    private LinkedHashMap d;

    AdMarvelXMLElement(String s, LinkedHashMap linkedhashmap)
    {
        a = null;
        b = null;
        c = new StringBuilder();
        d = new LinkedHashMap();
        a = s;
        b = linkedhashmap;
    }

    public String a()
    {
        return a;
    }

    public void a(String s)
    {
        c.append(s);
    }

    public String b()
    {
        if (c == null)
        {
            return null;
        } else
        {
            return c.toString();
        }
    }

    public LinkedHashMap c()
    {
        return d;
    }

    public LinkedHashMap getAttributes()
    {
        return b;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<");
        stringbuilder.append(a);
        if (b != null)
        {
            for (Iterator iterator2 = b.keySet().iterator(); iterator2.hasNext(); stringbuilder.append("\""))
            {
                String s = (String)iterator2.next();
                stringbuilder.append(" ");
                stringbuilder.append(s);
                stringbuilder.append("=");
                stringbuilder.append("\"");
                stringbuilder.append(AdMarvelXMLReader.xmlEncode((String)b.get(s)));
            }

        }
        stringbuilder.append(">");
        for (Iterator iterator = d.values().iterator(); iterator.hasNext();)
        {
            Iterator iterator1 = ((ArrayList)iterator.next()).iterator();
            while (iterator1.hasNext()) 
            {
                stringbuilder.append(((AdMarvelXMLElement)iterator1.next()).toString());
            }
        }

        stringbuilder.append(AdMarvelXMLReader.xmlEncode(c.toString()));
        stringbuilder.append("</");
        stringbuilder.append(a);
        stringbuilder.append(">");
        return stringbuilder.toString();
    }
}
