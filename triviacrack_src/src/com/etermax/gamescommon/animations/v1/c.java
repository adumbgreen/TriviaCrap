// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations.v1;

import org.xmlpull.v1.XmlPullParser;

public class c
{

    private String a;
    private int b;

    public c(XmlPullParser xmlpullparser)
    {
        xmlpullparser.require(2, null, "frame");
        a(xmlpullparser.getAttributeValue(null, "name"));
        b(xmlpullparser.getAttributeValue(null, "repeat"));
        xmlpullparser.next();
    }

    public String a()
    {
        return a;
    }

    public void a(String s)
    {
        a = s;
    }

    public int b()
    {
        return b;
    }

    public void b(String s)
    {
        try
        {
            b = Integer.valueOf(s).intValue();
            return;
        }
        catch (Exception exception)
        {
            b = 0;
        }
    }
}
