// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

public class b
{

    public String a;
    public List b;
    final b c;

    public String a()
    {
        return a;
    }

    public void a(String s)
    {
        b.add(URLDecoder.decode(s));
    }

    public ( , String s, String s1)
    {
        c = ;
        super();
        a = s;
        b = new ArrayList();
        b.add(URLDecoder.decode(s1));
    }
}
