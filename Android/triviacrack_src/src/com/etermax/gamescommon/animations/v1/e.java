// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations.v1;

import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package com.etermax.gamescommon.animations.v1:
//            f, b

public class e
{

    private HashMap a;

    public e(XmlPullParser xmlpullparser)
    {
        a = new HashMap();
        do
        {
            if (xmlpullparser.next() == 3)
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2)
            {
                if (xmlpullparser.getName().equals("Size"))
                {
                    String s = xmlpullparser.getAttributeValue(null, "name");
                    float f1 = Float.valueOf(xmlpullparser.getAttributeValue(null, "width")).floatValue();
                    float f2 = Float.valueOf(xmlpullparser.getAttributeValue(null, "height")).floatValue();
                    a.put(s, new f(this, f1, f2));
                    xmlpullparser.next();
                } else
                {
                    b.a(xmlpullparser);
                }
            }
        } while (true);
    }

    public f a(String s)
    {
        return (f)a.get(s);
    }
}
