// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import com.mdotm.android.e.d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

// Referenced classes of package com.mdotm.android.vast:
//            e, c, d, a

public class h
{

    public final String A = "mute";
    public final String B = "unmute";
    public final String C = "pause";
    public final String D = "resume";
    public final String E = "complete";
    public final String F = "progressive";
    public final String G = "stream";
    private final String H = "SampleXMLParser";
    public final String a = "Ad";
    public final String b = "id";
    public final String c = "AdTitle";
    public final String d = "Description";
    public final String e = "InLine";
    public final String f = "Error";
    public final String g = "Impression";
    public final String h = "Creatives";
    public final String i = "Creative";
    public final String j = "Linear";
    public final String k = "Duration";
    public final String l = "TrackingEvents";
    public final String m = "Tracking";
    public final String n = "event";
    public final String o = "VideoClicks";
    public final String p = "ClickThrough";
    public final String q = "MediaFiles";
    public final String r = "MediaFile";
    public final String s = "type";
    public final String t = "video/mp4";
    public final String u = "video/mpeg";
    public final String v = "delivery";
    public final String w = "start";
    public final String x = "firstQuartile";
    public final String y = "midpoint";
    public final String z = "thirdQuartile";

    public h()
    {
    }

    private int a(Node node)
    {
        int i1;
        if ("progressive".equalsIgnoreCase(node.getNodeValue()))
        {
            i1 = 1;
        } else
        {
            boolean flag = "stream".equalsIgnoreCase(node.getNodeValue());
            i1 = 0;
            if (flag)
            {
                return 2;
            }
        }
        return i1;
    }

    private void a(e e1, Node node)
    {
        NodeList nodelist;
        int i1;
        nodelist = node.getChildNodes();
        i1 = 0;
_L2:
        Node node1;
        if (i1 >= nodelist.getLength())
        {
            com.mdotm.android.e.d.b(this, (new StringBuilder(" child parsing done")).append(e1).toString());
            return;
        }
        node1 = nodelist.item(i1);
        if (!"AdTitle".equalsIgnoreCase(node1.getNodeName()))
        {
            break; /* Loop/switch isn't completed */
        }
        e1.a = node1.getFirstChild().getNodeValue();
_L3:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        if ("Description".equalsIgnoreCase(node1.getNodeName()))
        {
            if (node1.getFirstChild() != null)
            {
                e1.b = node1.getFirstChild().getNodeValue();
            }
        } else
        if ("Error".equalsIgnoreCase(node1.getNodeName()))
        {
            if (node1.getFirstChild() instanceof CharacterData)
            {
                String s4 = ((CharacterData)node1.getFirstChild()).getData();
                e1.d.add(s4);
            }
        } else
        {
            if (!"Impression".equalsIgnoreCase(node1.getNodeName()))
            {
                continue; /* Loop/switch isn't completed */
            }
            if (node1.getFirstChild() instanceof CharacterData)
            {
                String s3 = ((CharacterData)node1.getFirstChild()).getData();
                e1.e.add(s3);
            }
        }
          goto _L3
          goto _L2
        if (!"Creatives".equalsIgnoreCase(node1.getNodeName())) goto _L3; else goto _L4
_L4:
        NodeList nodelist1;
        int j1;
        nodelist1 = node1.getChildNodes();
        j1 = 0;
_L9:
        if (j1 >= nodelist1.getLength()) goto _L3; else goto _L5
_L5:
        Node node2 = nodelist1.item(j1);
        if (!"Creative".equalsIgnoreCase(node2.getNodeName())) goto _L7; else goto _L6
_L6:
        NodeList nodelist2;
        int k1;
        nodelist2 = node2.getChildNodes();
        k1 = 0;
_L14:
        if (k1 < nodelist2.getLength()) goto _L8; else goto _L7
_L7:
        j1++;
          goto _L9
_L8:
        Node node3 = nodelist2.item(k1);
        if (!"Linear".equalsIgnoreCase(node3.getNodeName())) goto _L11; else goto _L10
_L10:
        c c1;
        NodeList nodelist3;
        int l1;
        c1 = new c();
        c1.a = 1;
        nodelist3 = node3.getChildNodes();
        l1 = 0;
_L17:
        if (l1 < nodelist3.getLength()) goto _L13; else goto _L12
_L12:
        e1.f.add(c1);
_L11:
        k1++;
          goto _L14
_L13:
        Node node4 = nodelist3.item(l1);
        if (!"Duration".equalsIgnoreCase(node4.getNodeName())) goto _L16; else goto _L15
_L15:
        c1.b = node4.getFirstChild().getNodeValue();
_L18:
        l1++;
          goto _L17
_L16:
        NodeList nodelist6;
        com.mdotm.android.vast.d d1;
        int l2;
        if (!"TrackingEvents".equalsIgnoreCase(node4.getNodeName()))
        {
            break MISSING_BLOCK_LABEL_572;
        }
        nodelist6 = node4.getChildNodes();
        d1 = new com.mdotm.android.vast.d();
        l2 = 0;
_L19:
label0:
        {
            if (l2 < nodelist6.getLength())
            {
                break label0;
            }
            c1.a(d1);
        }
          goto _L18
        Node node8 = nodelist6.item(l2);
        if ("Tracking".equalsIgnoreCase(node8.getNodeName()))
        {
            a(node8, d1);
        }
        l2++;
          goto _L19
        if (!"VideoClicks".equalsIgnoreCase(node4.getNodeName()))
        {
            continue; /* Loop/switch isn't completed */
        }
        NodeList nodelist5 = node4.getChildNodes();
        int k2 = 0;
        while (k2 < nodelist5.getLength()) 
        {
            Node node7 = nodelist5.item(k2);
            if ("ClickThrough".equalsIgnoreCase(node7.getNodeName()) && (node7.getFirstChild() instanceof CharacterData))
            {
                String s2 = ((CharacterData)node7.getFirstChild()).getData();
                c1.d.add(s2);
            }
            k2++;
        }
          goto _L18
        if (!"MediaFiles".equalsIgnoreCase(node4.getNodeName())) goto _L18; else goto _L20
_L20:
        NodeList nodelist4 = node4.getChildNodes();
        int i2 = 0;
        while (i2 < nodelist4.getLength()) 
        {
            Node node5 = nodelist4.item(i2);
            if ("MediaFile".equalsIgnoreCase(node5.getNodeName()))
            {
                NamedNodeMap namednodemap = node5.getAttributes();
                Node node6 = namednodemap.getNamedItem("type");
                if (("video/mp4".equalsIgnoreCase(node6.getNodeValue()) || "video/mpeg".equalsIgnoreCase(node6.getNodeValue())) && (node5.getFirstChild() instanceof CharacterData))
                {
                    String s1 = ((CharacterData)node5.getFirstChild()).getData().trim();
                    int j2 = a(namednodemap.getNamedItem("delivery"));
                    a a1 = new a();
                    a1.b = j2;
                    a1.c = s1;
                    c1.e = a1;
                }
            }
            i2++;
        }
          goto _L18
    }

    private void a(Node node, com.mdotm.android.vast.d d1)
    {
        String s1 = node.getAttributes().getNamedItem("event").getNodeValue();
        if (node.getFirstChild() instanceof CharacterData)
        {
            String s2 = ((CharacterData)node.getFirstChild()).getData();
            if (s1.equalsIgnoreCase("start"))
            {
                d1.b.add(s2);
            } else
            {
                if (s1.equalsIgnoreCase("firstQuartile"))
                {
                    d1.c.add(s2);
                    return;
                }
                if (s1.equalsIgnoreCase("midpoint"))
                {
                    d1.d.add(s2);
                    return;
                }
                if (s1.equalsIgnoreCase("thirdQuartile"))
                {
                    d1.e.add(s2);
                    return;
                }
                if (s1.equalsIgnoreCase("complete"))
                {
                    d1.f.add(s2);
                    return;
                }
                if (s1.equalsIgnoreCase("mute"))
                {
                    d1.g.add(s2);
                    return;
                }
                if (s1.equalsIgnoreCase("unmute"))
                {
                    d1.h.add(s2);
                    return;
                }
                if (s1.equalsIgnoreCase("pause"))
                {
                    d1.i.add(s2);
                    return;
                }
                if (s1.equalsIgnoreCase("resume"))
                {
                    d1.j.add(s2);
                    return;
                }
            }
        }
    }

    public e a(String s1)
    {
        e e1 = new e();
        if (s1 != null && s1.length() != 0) goto _L2; else goto _L1
_L1:
        e1.a(0);
_L10:
        return e1;
_L2:
        int i1;
        e1.a(1);
        NodeList nodelist;
        NodeList nodelist1;
        int j1;
        Node node;
        try
        {
            DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
            documentbuilderfactory.setCoalescing(true);
            Document document = documentbuilderfactory.newDocumentBuilder().parse(new InputSource(new ByteArrayInputStream(s1.getBytes("utf-8"))));
            document.getDocumentElement().normalize();
            nodelist = document.getElementsByTagName("Ad");
        }
        catch (ParserConfigurationException parserconfigurationexception)
        {
            e1.a(0);
            parserconfigurationexception.printStackTrace();
            return e1;
        }
        catch (SAXException saxexception)
        {
            e1.a(0);
            saxexception.printStackTrace();
            return e1;
        }
        catch (IOException ioexception)
        {
            e1.a(0);
            ioexception.printStackTrace();
            return e1;
        }
        if (nodelist == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (nodelist.getLength() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        i1 = 0;
_L8:
        if (i1 >= nodelist.getLength())
        {
            continue; /* Loop/switch isn't completed */
        }
        nodelist1 = nodelist.item(i1).getChildNodes();
        if (nodelist1 == null) goto _L4; else goto _L3
_L3:
        if (nodelist1.getLength() <= 0) goto _L4; else goto _L5
_L5:
        j1 = 0;
_L6:
        if (j1 >= nodelist1.getLength())
        {
            break; /* Loop/switch isn't completed */
        }
        node = nodelist1.item(j1);
        if ("InLine".equalsIgnoreCase(node.getNodeName()))
        {
            a(e1, node);
        }
        j1++;
        if (true) goto _L6; else goto _L4
_L4:
        i1++;
        if (true) goto _L8; else goto _L7
_L7:
        if (true) goto _L10; else goto _L9
_L9:
    }
}
