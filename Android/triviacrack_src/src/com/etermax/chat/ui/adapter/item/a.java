// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.item;


public final class a extends Enum
{

    public static final a a;
    public static final a b;
    public static final a c;
    private static final a d[];

    private a(String s, int i)
    {
        super(s, i);
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/etermax/chat/ui/adapter/item/a, s);
    }

    public static a[] values()
    {
        return (a[])d.clone();
    }

    static 
    {
        a = new a("DONE", 0);
        b = new a("WORKING", 1);
        c = new a("FAILED", 2);
        a aa[] = new a[3];
        aa[0] = a;
        aa[1] = b;
        aa[2] = c;
        d = aa;
    }
}
