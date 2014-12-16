// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools;

import android.content.Context;
import android.graphics.Typeface;
import com.etermax.a.a;
import java.util.Hashtable;

public class c
{

    private static final Hashtable a = new Hashtable();

    public static Typeface a(Context context, String s)
    {
        Hashtable hashtable = a;
        hashtable;
        JVM INSTR monitorenter ;
        boolean flag = a.containsKey(s);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        Typeface typeface1 = Typeface.createFromAsset(context.getAssets(), (new StringBuilder()).append("fonts/").append(s).toString());
        a.put(s, typeface1);
        Typeface typeface = (Typeface)a.get(s);
        hashtable;
        JVM INSTR monitorexit ;
        return typeface;
        Exception exception1;
        exception1;
        com.etermax.a.a.b("Typefaces", (new StringBuilder()).append("Could not get typeface '").append(s).append("' because ").append(exception1.getMessage()).toString());
        hashtable;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
