// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations.v1;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package com.etermax.gamescommon.animations.v1:
//            d, e, f

public class b
{

    List a;
    private String b;
    private String c;
    private int d;
    private int e;
    private e f;

    public b(XmlPullParser xmlpullparser)
    {
        a = new ArrayList();
        xmlpullparser.require(2, null, "Animation");
        a(xmlpullparser.getAttributeValue(null, "name"));
        b(xmlpullparser.getAttributeValue(null, "framerate"));
        c(xmlpullparser.getAttributeValue(null, "totalframes"));
        do
        {
            if (xmlpullparser.next() == 3)
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2)
            {
                String s = xmlpullparser.getName();
                if (s.equals("Part"))
                {
                    a.add(new d(xmlpullparser));
                } else
                if (s.equals("Sizes"))
                {
                    f = new e(xmlpullparser);
                } else
                {
                    a(xmlpullparser);
                }
            }
        } while (true);
    }

    public static void a(XmlPullParser xmlpullparser)
    {
        if (xmlpullparser.getEventType() != 2)
        {
            throw new IllegalStateException();
        }
        int i = 1;
        do
        {
            if (i == 0)
            {
                break;
            }
            switch (xmlpullparser.next())
            {
            case 2: // '\002'
                i++;
                break;

            case 3: // '\003'
                i--;
                break;
            }
        } while (true);
    }

    public String a()
    {
        return b;
    }

    public void a(String s)
    {
        b = s;
    }

    public int b()
    {
        return d;
    }

    public void b(String s)
    {
        try
        {
            d = Integer.valueOf(s).intValue();
            return;
        }
        catch (Exception exception)
        {
            d = 0;
        }
    }

    public int c()
    {
        return e;
    }

    public void c(String s)
    {
        try
        {
            e = Integer.valueOf(s).intValue();
            return;
        }
        catch (Exception exception)
        {
            e = 0;
        }
    }

    public float d()
    {
        return f.a(c).a();
    }

    public void d(String s)
    {
        c = s;
    }

    public float e()
    {
        return f.a(c).b();
    }

    public List f()
    {
        return a;
    }
}
