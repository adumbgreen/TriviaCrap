// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations.v1;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package com.etermax.gamescommon.animations.v1:
//            c, b

public class d
{

    private float a;
    private float b;
    private String c;
    private List d;

    public d(XmlPullParser xmlpullparser)
    {
        d = new ArrayList();
        xmlpullparser.require(2, null, "Part");
        c(xmlpullparser.getAttributeValue(null, "name"));
        a(xmlpullparser.getAttributeValue(null, "posX"));
        b(xmlpullparser.getAttributeValue(null, "posY"));
        do
        {
            if (xmlpullparser.next() == 3)
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2)
            {
                if (xmlpullparser.getName().equals("frame"))
                {
                    d.add(new c(xmlpullparser));
                } else
                {
                    com.etermax.gamescommon.animations.v1.b.a(xmlpullparser);
                }
            }
        } while (true);
    }

    public float a()
    {
        return a;
    }

    public void a(String s)
    {
        try
        {
            a = Float.valueOf(s).floatValue();
            return;
        }
        catch (Exception exception)
        {
            a = 0.0F;
        }
    }

    public float b()
    {
        return b;
    }

    public void b(String s)
    {
        try
        {
            b = Float.valueOf(s).floatValue();
            return;
        }
        catch (Exception exception)
        {
            b = 0.0F;
        }
    }

    public List c()
    {
        return d;
    }

    public void c(String s)
    {
        c = s;
    }
}
