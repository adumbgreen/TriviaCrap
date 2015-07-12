// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelXMLElement

public class AdMarvelXMLReader extends DefaultHandler
{

    private AdMarvelXMLElement a;
    private Stack b;

    public AdMarvelXMLReader()
    {
        a = null;
        b = null;
    }

    private static String chkAndReplace(String s, String s1, String s2)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        StringBuffer stringbuffer = new StringBuffer(s);
_L6:
        int i = 0;
_L4:
        int j = stringbuffer.toString().indexOf(s1, i);
        if (j == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.replace(j, j + s1.length(), s2);
        i = j + 1;
        if (true) goto _L4; else goto _L3
_L3:
        break; /* Loop/switch isn't completed */
_L2:
        stringbuffer = new StringBuffer("");
        if (true) goto _L6; else goto _L5
        Exception exception1;
        exception1;
        StringBuffer stringbuffer1 = null;
_L8:
        exception1.printStackTrace();
        stringbuffer = stringbuffer1;
_L5:
        if (stringbuffer == null)
        {
            return null;
        } else
        {
            return stringbuffer.toString();
        }
        Exception exception;
        exception;
        stringbuffer1 = stringbuffer;
        exception1 = exception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static String xmlDecode(String s)
    {
        if (s != null)
        {
            return chkAndReplace(chkAndReplace(chkAndReplace(chkAndReplace(s, "&amp;", "&"), "&quot;", "\""), "&gt;", ">"), "&lt;", "<");
        } else
        {
            return null;
        }
    }

    static String xmlEncode(String s)
    {
        if (s != null)
        {
            return chkAndReplace(chkAndReplace(chkAndReplace(chkAndReplace(s, "&", "&amp;"), "\"", "&quot;"), "<", "&lt;"), ">", "&gt;");
        } else
        {
            return null;
        }
    }

    public void characters(char ac[], int i, int j)
    {
        String s = (new String(ac)).substring(i, i + j);
        ((AdMarvelXMLElement)b.peek()).a(s);
    }

    public void endElement(String s, String s1, String s2)
    {
        b.pop();
    }

    public AdMarvelXMLElement getParsedXMLData()
    {
        return a;
    }

    public void parseXMLString(String s)
    {
        b = new Stack();
        XMLReader xmlreader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        xmlreader.setContentHandler(this);
        xmlreader.parse(new InputSource(new StringReader(s)));
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        if (attributes != null)
        {
            int i = attributes.getLength();
            for (int j = 0; j < i; j++)
            {
                linkedhashmap.put(attributes.getLocalName(j), attributes.getValue(j));
            }

        }
        AdMarvelXMLElement admarvelxmlelement = new AdMarvelXMLElement(s1, linkedhashmap);
        if (b.empty())
        {
            a = admarvelxmlelement;
        } else
        {
            AdMarvelXMLElement admarvelxmlelement1 = (AdMarvelXMLElement)b.peek();
            ArrayList arraylist = (ArrayList)admarvelxmlelement1.c().get(s1);
            if (arraylist == null)
            {
                arraylist = new ArrayList();
                admarvelxmlelement1.c().put(s1, arraylist);
            }
            arraylist.add(admarvelxmlelement);
        }
        b.push(admarvelxmlelement);
    }
}
