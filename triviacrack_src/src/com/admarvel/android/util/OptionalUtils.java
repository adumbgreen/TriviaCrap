// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class OptionalUtils
{

    public OptionalUtils()
    {
    }

    public static String getId(Context context)
    {
        Class aclass[] = {
            android/content/Context
        };
        Class class3 = Class.forName("com.admarvel.androidid.FetchAndroidId");
        Class class1 = class3;
        Object obj1 = class1.newInstance();
        Object obj;
        boolean flag;
        obj = obj1;
        flag = true;
_L6:
        if (!flag) goto _L2; else goto _L1
_L1:
        String s = (String)class1.getDeclaredMethod("getId", aclass).invoke(obj, new Object[] {
            context
        });
        return s;
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
        Class class2 = null;
_L4:
        illegalaccessexception1.printStackTrace();
        class1 = class2;
        flag = true;
        obj = null;
        continue; /* Loop/switch isn't completed */
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        nosuchmethodexception.printStackTrace();
        return "";
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        illegalargumentexception.printStackTrace();
        return "";
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
        return "";
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        invocationtargetexception.printStackTrace();
_L2:
        return "";
        IllegalAccessException illegalaccessexception2;
        illegalaccessexception2;
        class2 = class1;
        illegalaccessexception1 = illegalaccessexception2;
        if (true) goto _L4; else goto _L3
_L3:
        InstantiationException instantiationexception;
        instantiationexception;
        class1 = null;
        obj = null;
        flag = false;
        continue; /* Loop/switch isn't completed */
        InstantiationException instantiationexception1;
        instantiationexception1;
        obj = null;
        flag = false;
        continue; /* Loop/switch isn't completed */
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        class1 = null;
        obj = null;
        flag = false;
        continue; /* Loop/switch isn't completed */
        ClassNotFoundException classnotfoundexception1;
        classnotfoundexception1;
        obj = null;
        flag = false;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
