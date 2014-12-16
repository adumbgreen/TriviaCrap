// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

// Referenced classes of package com.mopub.mobileads.util.vast:
//            e, c, b

class a
{

    private Document a;

    a()
    {
    }

    private List b(String s)
    {
        return com.mopub.mobileads.util.vast.e.a(a, "Tracking", "event", s);
    }

    String a()
    {
        List list = com.mopub.mobileads.util.vast.e.a(a, "VASTAdTagURI");
        if (list.size() > 0)
        {
            return (String)list.get(0);
        } else
        {
            return null;
        }
    }

    void a(String s)
    {
        String s1 = s.replaceFirst("<\\?.*\\?>", "");
        String s2 = (new StringBuilder()).append("<MPMoVideoXMLDocRoot>").append(s1).append("</MPMoVideoXMLDocRoot>").toString();
        DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
        documentbuilderfactory.setCoalescing(true);
        a = documentbuilderfactory.newDocumentBuilder().parse(new InputSource(new StringReader(s2)));
    }

    List b()
    {
        List list = com.mopub.mobileads.util.vast.e.a(a, "Impression");
        list.addAll(com.mopub.mobileads.util.vast.e.a(a, "MP_TRACKING_URL"));
        return list;
    }

    List c()
    {
        return b("start");
    }

    List d()
    {
        return b("firstQuartile");
    }

    List e()
    {
        return b("midpoint");
    }

    List f()
    {
        return b("thirdQuartile");
    }

    List g()
    {
        return b("complete");
    }

    String h()
    {
        List list = com.mopub.mobileads.util.vast.e.a(a, "ClickThrough");
        if (list.size() > 0)
        {
            return (String)list.get(0);
        } else
        {
            return null;
        }
    }

    List i()
    {
        return com.mopub.mobileads.util.vast.e.a(a, "ClickTracking");
    }

    List j()
    {
        NodeList nodelist = a.getElementsByTagName("MediaFile");
        ArrayList arraylist = new ArrayList(nodelist.getLength());
        for (int l = 0; l < nodelist.getLength(); l++)
        {
            arraylist.add(new c(this, nodelist.item(l)));
        }

        return arraylist;
    }

    List k()
    {
        NodeList nodelist = a.getElementsByTagName("Companion");
        ArrayList arraylist = new ArrayList(nodelist.getLength());
        for (int l = 0; l < nodelist.getLength(); l++)
        {
            arraylist.add(new b(this, nodelist.item(l)));
        }

        return arraylist;
    }
}
