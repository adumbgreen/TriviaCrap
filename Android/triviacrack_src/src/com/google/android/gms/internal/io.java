// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;

public class io extends IOException
{

    io(int i, int j)
    {
        super((new StringBuilder()).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(j).append(").").toString());
    }
}
