// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class v
{

    public v()
    {
    }

    public static v a()
    {
        v v3;
        try
        {
            Class class1 = Class.forName("sun.misc.Unsafe");
            Field field = class1.getDeclaredField("theUnsafe");
            field.setAccessible(true);
            Object obj = field.get(null);
            v3 = new v(class1.getMethod("allocateInstance", new Class[] {
                java/lang/Class
            }), obj) {

                final Method a;
                final Object b;

                public Object a(Class class2)
                {
                    return a.invoke(b, new Object[] {
                        class2
                    });
                }

            
            {
                a = method;
                b = obj;
                super();
            }
            };
        }
        catch (Exception exception)
        {
            v v2;
            try
            {
                Method method2 = java/io/ObjectInputStream.getDeclaredMethod("newInstance", new Class[] {
                    java/lang/Class, java/lang/Class
                });
                method2.setAccessible(true);
                v2 = new v(method2) {

                    final Method a;

                    public Object a(Class class2)
                    {
                        return a.invoke(null, new Object[] {
                            class2, java/lang/Object
                        });
                    }

            
            {
                a = method;
                super();
            }
                };
            }
            catch (Exception exception1)
            {
                v v1;
                try
                {
                    Method method = java/io/ObjectStreamClass.getDeclaredMethod("getConstructorId", new Class[] {
                        java/lang/Class
                    });
                    method.setAccessible(true);
                    int i = ((Integer)method.invoke(null, new Object[] {
                        java/lang/Object
                    })).intValue();
                    Class aclass[] = new Class[2];
                    aclass[0] = java/lang/Class;
                    aclass[1] = Integer.TYPE;
                    Method method1 = java/io/ObjectStreamClass.getDeclaredMethod("newInstance", aclass);
                    method1.setAccessible(true);
                    v1 = new v(method1, i) {

                        final Method a;
                        final int b;

                        public Object a(Class class2)
                        {
                            Method method3 = a;
                            Object aobj[] = new Object[2];
                            aobj[0] = class2;
                            aobj[1] = Integer.valueOf(b);
                            return method3.invoke(null, aobj);
                        }

            
            {
                a = method;
                b = i;
                super();
            }
                    };
                }
                catch (Exception exception2)
                {
                    return new v() {

                        public Object a(Class class2)
                        {
                            throw new UnsupportedOperationException((new StringBuilder()).append("Cannot allocate ").append(class2).toString());
                        }

                    };
                }
                return v1;
            }
            return v2;
        }
        return v3;
    }

    public abstract Object a(Class class1);
}
