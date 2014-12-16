// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

class e
{

    static String a(Node node)
    {
        if (node != null && node.getFirstChild() != null && node.getFirstChild().getNodeValue() != null)
        {
            return node.getFirstChild().getNodeValue().trim();
        } else
        {
            return null;
        }
    }

    static List a(Document document, String s)
    {
        return a(document, s, null, ((String) (null)));
    }

    static List a(Document document, String s, String s1, String s2)
    {
        ArrayList arraylist = new ArrayList();
        if (document == null)
        {
            return arraylist;
        }
        NodeList nodelist = document.getElementsByTagName(s);
        if (nodelist == null)
        {
            return arraylist;
        }
        for (int i = 0; i < nodelist.getLength(); i++)
        {
            Node node = nodelist.item(i);
            if (node == null || !a(node, s1, Arrays.asList(new String[] {
    s2
})))
            {
                continue;
            }
            String s3 = a(node);
            if (s3 != null)
            {
                arraylist.add(s3);
            }
        }

        return arraylist;
    }

    static Node a(Node node, String s)
    {
        return a(node, s, null, ((List) (null)));
    }

    static Node a(Node node, String s, String s1, List list)
    {
        List list1;
        if (node != null && s != null)
        {
            if ((list1 = b(node, s, s1, list)) != null && !list1.isEmpty())
            {
                return (Node)list1.get(0);
            }
        }
        return null;
    }

    static boolean a(Node node, String s, List list)
    {
        if (s != null && list != null) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Node node1;
        NamedNodeMap namednodemap = node.getAttributes();
        if (namednodemap == null)
        {
            break; /* Loop/switch isn't completed */
        }
        node1 = namednodemap.getNamedItem(s);
        if (node1 != null && list.contains(node1.getNodeValue())) goto _L1; else goto _L3
_L3:
        return false;
    }

    static Integer b(Node node, String s)
    {
        if (node == null || s == null)
        {
            return null;
        }
        Integer integer;
        try
        {
            integer = Integer.valueOf(Integer.parseInt(c(node, s)));
        }
        catch (NumberFormatException numberformatexception)
        {
            return null;
        }
        return integer;
    }

    static List b(Node node, String s, String s1, List list)
    {
        if (node == null || s == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        NodeList nodelist = node.getChildNodes();
        for (int i = 0; i < nodelist.getLength(); i++)
        {
            Node node1 = nodelist.item(i);
            if (node1.getNodeName().equals(s) && a(node1, s1, list))
            {
                arraylist.add(node1);
            }
        }

        return arraylist;
    }

    static String c(Node node, String s)
    {
        Node node1;
        if (node != null && s != null)
        {
            if ((node1 = node.getAttributes().getNamedItem(s)) != null)
            {
                return node1.getNodeValue();
            }
        }
        return null;
    }
}
