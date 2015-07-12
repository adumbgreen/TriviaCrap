// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.Collection;

class Validator
{

    Validator()
    {
    }

    static void validateNotEmpty(Collection collection, String s)
    {
        if (collection.isEmpty())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" must not be empty").toString());
        } else
        {
            return;
        }
    }

    static void validateNotNull(Object obj, String s)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" must not be null").toString());
        } else
        {
            return;
        }
    }
}
