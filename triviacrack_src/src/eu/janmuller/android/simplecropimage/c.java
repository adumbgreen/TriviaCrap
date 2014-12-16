// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public class c
    implements Iterable
{

    private final WeakHashMap a = new WeakHashMap();

    public c()
    {
    }

    public Iterator iterator()
    {
        return a.keySet().iterator();
    }
}
