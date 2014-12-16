// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;

// Referenced classes of package com.mopub.mobileads.util.vast:
//            e, a

class b
{

    final a a;
    private final Node b;

    b(a a1, Node node)
    {
        a = a1;
        super();
        if (node == null)
        {
            throw new IllegalArgumentException("Companion node cannot be null");
        } else
        {
            b = node;
            return;
        }
    }

    Integer a()
    {
        return com.mopub.mobileads.util.vast.e.b(b, "width");
    }

    Integer b()
    {
        return com.mopub.mobileads.util.vast.e.b(b, "height");
    }

    String c()
    {
        return com.mopub.mobileads.util.vast.e.c(com.mopub.mobileads.util.vast.e.a(b, "StaticResource"), "creativeType");
    }

    String d()
    {
        return com.mopub.mobileads.util.vast.e.a(com.mopub.mobileads.util.vast.e.a(b, "StaticResource"));
    }

    String e()
    {
        return com.mopub.mobileads.util.vast.e.a(com.mopub.mobileads.util.vast.e.a(b, "CompanionClickThrough"));
    }

    List f()
    {
        ArrayList arraylist = new ArrayList();
        Node node = com.mopub.mobileads.util.vast.e.a(b, "TrackingEvents");
        if (node == null)
        {
            return arraylist;
        }
        Iterator iterator = com.mopub.mobileads.util.vast.e.b(node, "Tracking", "event", Arrays.asList(new String[] {
            "creativeView"
        })).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Node node1 = (Node)iterator.next();
            if (node1.getFirstChild() != null)
            {
                arraylist.add(node1.getFirstChild().getNodeValue().trim());
            }
        } while (true);
        return arraylist;
    }
}
