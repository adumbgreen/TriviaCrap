// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            ba

class bb extends ba
{

    private final int a;
    private final int b;

    bb(int i, int j)
    {
        a = i;
        b = j;
    }

    public static bb createWithSize(int i, int j)
    {
        return new bb(i, j);
    }

    public String toJsonPair()
    {
        return (new StringBuilder()).append("screenSize: { width: ").append(a).append(", height: ").append(b).append(" }").toString();
    }
}
