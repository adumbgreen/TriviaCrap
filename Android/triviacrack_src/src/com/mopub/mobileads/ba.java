// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


abstract class ba
{

    ba()
    {
    }

    private String a(String s)
    {
        if (s != null)
        {
            return s.replaceAll("[^a-zA-Z0-9_,:\\s\\{\\}\\'\\\"]", "");
        } else
        {
            return "";
        }
    }

    public abstract String toJsonPair();

    public String toString()
    {
        return a(toJsonPair());
    }
}
