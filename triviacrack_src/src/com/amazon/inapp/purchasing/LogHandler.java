// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


interface LogHandler
{

    public abstract void error(String s, String s1);

    public abstract boolean isErrorOn();

    public abstract boolean isTestOn();

    public abstract boolean isTraceOn();

    public abstract void test(String s, String s1);

    public abstract void trace(String s, String s1);
}
