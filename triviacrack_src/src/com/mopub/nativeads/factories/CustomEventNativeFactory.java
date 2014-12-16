// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads.factories;

import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;

public class CustomEventNativeFactory
{

    protected static CustomEventNativeFactory a = new CustomEventNativeFactory();

    public CustomEventNativeFactory()
    {
    }

    public static CustomEventNative create(String s)
    {
        if (s != null)
        {
            Class class1 = Class.forName(s).asSubclass(com/mopub/nativeads/CustomEventNative);
            return a.a(class1);
        } else
        {
            return new MoPubCustomEventNative();
        }
    }

    public static void setInstance(CustomEventNativeFactory customeventnativefactory)
    {
        a = customeventnativefactory;
    }

    protected CustomEventNative a(Class class1)
    {
        Constructor constructor = class1.getDeclaredConstructor((Class[])null);
        constructor.setAccessible(true);
        return (CustomEventNative)constructor.newInstance(new Object[0]);
    }

}
