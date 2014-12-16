// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;


abstract class a
{

    public int op;
    public byte output[];

    a()
    {
    }

    public abstract int maxOutputSize(int i);

    public abstract boolean process(byte abyte0[], int i, int j, boolean flag);
}
