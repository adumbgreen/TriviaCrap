// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            id, ih, iq, is, 
//            it, iv, ir

public abstract class ig extends id
{

    static boolean d = false;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static Method i;
    private static Method j;
    private static String k;
    private static long l = 0L;
    private static is m;

    protected ig(Context context, iq iq1, ir ir)
    {
        super(context, iq1, ir);
    }

    static String a()
    {
        if (k == null)
        {
            throw new ih();
        } else
        {
            return k;
        }
    }

    static String a(Context context, iq iq1)
    {
        if (g == null)
        {
            throw new ih();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)g.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ih(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ih(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        throw new ih();
        s = iq1.a(bytebuffer.array(), true);
        return s;
    }

    static ArrayList a(MotionEvent motionevent, DisplayMetrics displaymetrics)
    {
        if (h == null || motionevent == null)
        {
            throw new ih();
        }
        ArrayList arraylist;
        try
        {
            arraylist = (ArrayList)h.invoke(null, new Object[] {
                motionevent, displaymetrics
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ih(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ih(invocationtargetexception);
        }
        return arraylist;
    }

    protected static void a(String s, Context context, iq iq1)
    {
        com/google/android/gms/internal/ig;
        JVM INSTR monitorenter ;
        boolean flag = d;
        Exception exception;
        if (!flag)
        {
            try
            {
                m = new is(iq1, null);
                k = s;
                e(context);
                l = b().longValue();
                d = true;
            }
            catch (ih ih1) { }
            catch (UnsupportedOperationException unsupportedoperationexception) { }
            finally
            {
                com/google/android/gms/internal/ig;
            }
        }
        com/google/android/gms/internal/ig;
        JVM INSTR monitorexit ;
        return;
        throw exception;
    }

    static Long b()
    {
        if (e == null)
        {
            throw new ih();
        }
        Long long1;
        try
        {
            long1 = (Long)e.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ih(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ih(invocationtargetexception);
        }
        return long1;
    }

    static String b(Context context, iq iq1)
    {
        if (j == null)
        {
            throw new ih();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)j.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ih(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ih(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        throw new ih();
        s = iq1.a(bytebuffer.array(), true);
        return s;
    }

    private static String b(byte abyte0[], String s)
    {
        String s1;
        try
        {
            s1 = new String(m.a(abyte0, s), "UTF-8");
        }
        catch (it it1)
        {
            throw new ih(it1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new ih(unsupportedencodingexception);
        }
        return s1;
    }

    static String c()
    {
        if (f == null)
        {
            throw new ih();
        }
        String s;
        try
        {
            s = (String)f.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ih(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ih(invocationtargetexception);
        }
        return s;
    }

    static String d(Context context)
    {
        String s;
        if (i == null)
        {
            throw new ih();
        }
        try
        {
            s = (String)i.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ih(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ih(invocationtargetexception);
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        throw new ih();
        return s;
    }

    private static void e(Context context)
    {
        byte abyte0[];
        byte abyte1[];
        File file;
        File file1;
        FileOutputStream fileoutputstream;
        DexClassLoader dexclassloader;
        Class class1;
        Class class2;
        Class class3;
        Class class4;
        Class class5;
        Class class6;
        String s;
        try
        {
            abyte0 = m.a(iv.a());
            abyte1 = m.a(abyte0, iv.b());
            file = context.getCacheDir();
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            throw new ih(filenotfoundexception);
        }
        catch (IOException ioexception)
        {
            throw new ih(ioexception);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new ih(classnotfoundexception);
        }
        catch (it it1)
        {
            throw new ih(it1);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new ih(nosuchmethodexception);
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new ih(nullpointerexception);
        }
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        file = context.getDir("dex", 0);
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        throw new ih();
        file1 = File.createTempFile("ads", ".jar", file);
        fileoutputstream = new FileOutputStream(file1);
        fileoutputstream.write(abyte1, 0, abyte1.length);
        fileoutputstream.close();
        dexclassloader = new DexClassLoader(file1.getAbsolutePath(), file.getAbsolutePath(), null, context.getClassLoader());
        class1 = dexclassloader.loadClass(b(abyte0, iv.c()));
        class2 = dexclassloader.loadClass(b(abyte0, iv.i()));
        class3 = dexclassloader.loadClass(b(abyte0, iv.g()));
        class4 = dexclassloader.loadClass(b(abyte0, iv.m()));
        class5 = dexclassloader.loadClass(b(abyte0, iv.e()));
        class6 = dexclassloader.loadClass(b(abyte0, iv.k()));
        e = class1.getMethod(b(abyte0, iv.d()), new Class[0]);
        f = class2.getMethod(b(abyte0, iv.j()), new Class[0]);
        g = class3.getMethod(b(abyte0, iv.h()), new Class[] {
            android/content/Context
        });
        h = class4.getMethod(b(abyte0, iv.n()), new Class[] {
            android/view/MotionEvent, android/util/DisplayMetrics
        });
        i = class5.getMethod(b(abyte0, iv.f()), new Class[] {
            android/content/Context
        });
        j = class6.getMethod(b(abyte0, iv.l()), new Class[] {
            android/content/Context
        });
        s = file1.getName();
        file1.delete();
        (new File(file, s.replace(".jar", ".dex"))).delete();
        return;
    }

    protected void b(Context context)
    {
        IOException ioexception;
        try
        {
            a(1, c());
        }
        catch (ih ih1) { }
        try
        {
            a(2, a());
        }
        catch (ih ih2) { }
        try
        {
            a(25, b().longValue());
        }
        catch (ih ih3) { }
        try
        {
            a(24, d(context));
            return;
        }
        catch (ih ih4)
        {
            return;
        }
        ioexception;
    }

    protected void c(Context context)
    {
        IOException ioexception;
        try
        {
            a(2, a());
        }
        catch (ih ih1) { }
        try
        {
            a(1, c());
        }
        catch (ih ih2) { }
        try
        {
            long l1 = b().longValue();
            a(25, l1);
            if (l != 0L)
            {
                a(17, l1 - l);
                a(23, l);
            }
        }
        catch (ih ih3) { }
        try
        {
            ArrayList arraylist = a(a, b);
            a(14, ((Long)arraylist.get(0)).longValue());
            a(15, ((Long)arraylist.get(1)).longValue());
            if (arraylist.size() >= 3)
            {
                a(16, ((Long)arraylist.get(2)).longValue());
            }
        }
        catch (ih ih4) { }
        try
        {
            a(27, a(context, c));
        }
        catch (ih ih5) { }
        try
        {
            a(29, b(context, c));
            return;
        }
        catch (ih ih6)
        {
            return;
        }
        ioexception;
    }

}
