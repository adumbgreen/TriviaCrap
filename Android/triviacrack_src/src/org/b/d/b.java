// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.d;

import java.lang.reflect.Array;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.b.d:
//            a

public abstract class b
{

    private static final Map a;
    private static final Map b;
    private static final Map c;
    private static final Map d = new HashMap(32);

    public b()
    {
    }

    public static Class a(String s)
    {
        Class class1 = null;
        if (s != null)
        {
            int i = s.length();
            class1 = null;
            if (i <= 8)
            {
                class1 = (Class)c.get(s);
            }
        }
        return class1;
    }

    public static Class a(String s, ClassLoader classloader)
    {
        org.b.d.a.a(s, "Name must not be null");
        Class class1 = a(s);
        if (class1 == null)
        {
            class1 = (Class)d.get(s);
        }
        if (class1 != null)
        {
            return class1;
        }
        if (s.endsWith("[]"))
        {
            return Array.newInstance(a(s.substring(0, s.length() - "[]".length()), classloader), 0).getClass();
        }
        if (s.startsWith("[L") && s.endsWith(";"))
        {
            return Array.newInstance(a(s.substring("[L".length(), -1 + s.length()), classloader), 0).getClass();
        }
        if (s.startsWith("["))
        {
            return Array.newInstance(a(s.substring("[".length()), classloader), 0).getClass();
        }
        if (classloader == null)
        {
            classloader = a();
        }
        Class class3 = classloader.loadClass(s);
        return class3;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        String s1;
        int i = s.lastIndexOf('.');
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        s1 = (new StringBuilder()).append(s.substring(0, i)).append('$').append(s.substring(i + 1)).toString();
        Class class2 = classloader.loadClass(s1);
        return class2;
        ClassNotFoundException classnotfoundexception1;
        classnotfoundexception1;
        throw classnotfoundexception;
    }

    public static ClassLoader a()
    {
        ClassLoader classloader1 = Thread.currentThread().getContextClassLoader();
        ClassLoader classloader = classloader1;
_L2:
        if (classloader == null)
        {
            classloader = org/b/d/b.getClassLoader();
        }
        return classloader;
        Throwable throwable;
        throwable;
        classloader = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String a(Class class1)
    {
        org.b.d.a.a(class1, "Class must not be null");
        if (class1.isArray())
        {
            return b(class1);
        } else
        {
            return class1.getName();
        }
    }

    public static String a(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        Class class1 = obj.getClass();
        if (Proxy.isProxyClass(class1))
        {
            StringBuilder stringbuilder = new StringBuilder(class1.getName());
            stringbuilder.append(" implementing ");
            Class aclass[] = class1.getInterfaces();
            for (int i = 0; i < aclass.length; i++)
            {
                stringbuilder.append(aclass[i].getName());
                if (i < -1 + aclass.length)
                {
                    stringbuilder.append(',');
                }
            }

            return stringbuilder.toString();
        }
        if (class1.isArray())
        {
            return b(class1);
        } else
        {
            return class1.getName();
        }
    }

    private static transient void a(Class aclass[])
    {
        int i = aclass.length;
        for (int j = 0; j < i; j++)
        {
            Class class1 = aclass[j];
            d.put(class1.getName(), class1);
        }

    }

    private static String b(Class class1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (; class1.isArray(); stringbuilder.append("[]"))
        {
            class1 = class1.getComponentType();
        }

        stringbuilder.insert(0, class1.getName());
        return stringbuilder.toString();
    }

    public static boolean b(String s, ClassLoader classloader)
    {
        try
        {
            a(s, classloader);
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }

    static 
    {
        a = new HashMap(8);
        b = new HashMap(8);
        c = new HashMap(32);
        a.put(java/lang/Boolean, Boolean.TYPE);
        a.put(java/lang/Byte, Byte.TYPE);
        a.put(java/lang/Character, Character.TYPE);
        a.put(java/lang/Double, Double.TYPE);
        a.put(java/lang/Float, Float.TYPE);
        a.put(java/lang/Integer, Integer.TYPE);
        a.put(java/lang/Long, Long.TYPE);
        a.put(java/lang/Short, Short.TYPE);
        Class aclass[];
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); a(aclass))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            b.put(entry.getValue(), entry.getKey());
            aclass = new Class[1];
            aclass[0] = (Class)entry.getKey();
        }

        HashSet hashset = new HashSet(32);
        hashset.addAll(a.values());
        hashset.addAll(Arrays.asList(new Class[] {
            [Z, [B, [C, [D, [F, [I, [J, [S
        }));
        hashset.add(Void.TYPE);
        Class class1;
        for (Iterator iterator1 = hashset.iterator(); iterator1.hasNext(); c.put(class1.getName(), class1))
        {
            class1 = (Class)iterator1.next();
        }

        a(new Class[] {
            [Ljava/lang/Boolean;, [Ljava/lang/Byte;, [Ljava/lang/Character;, [Ljava/lang/Double;, [Ljava/lang/Float;, [Ljava/lang/Integer;, [Ljava/lang/Long;, [Ljava/lang/Short;
        });
        a(new Class[] {
            java/lang/Number, [Ljava/lang/Number;, java/lang/String, [Ljava/lang/String;, java/lang/Object, [Ljava/lang/Object;, java/lang/Class, [Ljava/lang/Class;
        });
        a(new Class[] {
            java/lang/Throwable, java/lang/Exception, java/lang/RuntimeException, java/lang/Error, java/lang/StackTraceElement, [Ljava/lang/StackTraceElement;
        });
    }
}
