// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.g;
import com.millennialmedia.a.a.k;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

// Referenced classes of package com.millennialmedia.a.a.b:
//            q, j, v

public final class f
{

    private final Map a;

    public f(Map map)
    {
        a = map;
    }

    private q a(Class class1)
    {
        q q;
        try
        {
            Constructor constructor = class1.getDeclaredConstructor(new Class[0]);
            if (!constructor.isAccessible())
            {
                constructor.setAccessible(true);
            }
            q = new q(constructor) {

                final Constructor a;
                final f b;

                public Object a()
                {
                    Object obj;
                    try
                    {
                        obj = a.newInstance(null);
                    }
                    catch (InstantiationException instantiationexception)
                    {
                        throw new RuntimeException((new StringBuilder()).append("Failed to invoke ").append(a).append(" with no args").toString(), instantiationexception);
                    }
                    catch (InvocationTargetException invocationtargetexception)
                    {
                        throw new RuntimeException((new StringBuilder()).append("Failed to invoke ").append(a).append(" with no args").toString(), invocationtargetexception.getTargetException());
                    }
                    catch (IllegalAccessException illegalaccessexception)
                    {
                        throw new AssertionError(illegalaccessexception);
                    }
                    return obj;
                }

            
            {
                b = f.this;
                a = constructor;
                super();
            }
            };
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return q;
    }

    private q a(Type type, Class class1)
    {
        if (java/util/Collection.isAssignableFrom(class1))
        {
            if (java/util/SortedSet.isAssignableFrom(class1))
            {
                return new q() {

                    final f a;

                    public Object a()
                    {
                        return new TreeSet();
                    }

            
            {
                a = f.this;
                super();
            }
                };
            }
            if (java/util/EnumSet.isAssignableFrom(class1))
            {
                return new q(type) {

                    final Type a;
                    final f b;

                    public Object a()
                    {
                        if (a instanceof ParameterizedType)
                        {
                            Type type1 = ((ParameterizedType)a).getActualTypeArguments()[0];
                            if (type1 instanceof Class)
                            {
                                return EnumSet.noneOf((Class)type1);
                            } else
                            {
                                throw new k((new StringBuilder()).append("Invalid EnumSet type: ").append(a.toString()).toString());
                            }
                        } else
                        {
                            throw new k((new StringBuilder()).append("Invalid EnumSet type: ").append(a.toString()).toString());
                        }
                    }

            
            {
                b = f.this;
                a = type;
                super();
            }
                };
            }
            if (java/util/Set.isAssignableFrom(class1))
            {
                return new q() {

                    final f a;

                    public Object a()
                    {
                        return new LinkedHashSet();
                    }

            
            {
                a = f.this;
                super();
            }
                };
            }
            if (java/util/Queue.isAssignableFrom(class1))
            {
                return new q() {

                    final f a;

                    public Object a()
                    {
                        return new LinkedList();
                    }

            
            {
                a = f.this;
                super();
            }
                };
            } else
            {
                return new q() {

                    final f a;

                    public Object a()
                    {
                        return new ArrayList();
                    }

            
            {
                a = f.this;
                super();
            }
                };
            }
        }
        if (java/util/Map.isAssignableFrom(class1))
        {
            if (java/util/SortedMap.isAssignableFrom(class1))
            {
                return new q() {

                    final f a;

                    public Object a()
                    {
                        return new TreeMap();
                    }

            
            {
                a = f.this;
                super();
            }
                };
            }
            if ((type instanceof ParameterizedType) && !java/lang/String.isAssignableFrom(com.millennialmedia.a.a.c.a.a(((ParameterizedType)type).getActualTypeArguments()[0]).a()))
            {
                return new q() {

                    final f a;

                    public Object a()
                    {
                        return new LinkedHashMap();
                    }

            
            {
                a = f.this;
                super();
            }
                };
            } else
            {
                return new q() {

                    final f a;

                    public Object a()
                    {
                        return new j();
                    }

            
            {
                a = f.this;
                super();
            }
                };
            }
        } else
        {
            return null;
        }
    }

    private q b(Type type, Class class1)
    {
        return new q(class1, type) {

            final Class a;
            final Type b;
            final f c;
            private final v d = com.millennialmedia.a.a.b.v.a();

            public Object a()
            {
                Object obj;
                try
                {
                    obj = d.a(a);
                }
                catch (Exception exception)
                {
                    throw new RuntimeException((new StringBuilder()).append("Unable to invoke no-args constructor for ").append(b).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), exception);
                }
                return obj;
            }

            
            {
                c = f.this;
                a = class1;
                b = type;
                super();
            }
        };
    }

    public q a(a a1)
    {
        Type type = a1.b();
        Class class1 = a1.a();
        g g1 = (g)a.get(type);
        q q;
        if (g1 != null)
        {
            q = new q(g1, type) {

                final g a;
                final Type b;
                final f c;

                public Object a()
                {
                    return a.a(b);
                }

            
            {
                c = f.this;
                a = g1;
                b = type;
                super();
            }
            };
        } else
        {
            g g2 = (g)a.get(class1);
            if (g2 != null)
            {
                return new q(g2, type) {

                    final g a;
                    final Type b;
                    final f c;

                    public Object a()
                    {
                        return a.a(b);
                    }

            
            {
                c = f.this;
                a = g1;
                b = type;
                super();
            }
                };
            }
            q = a(class1);
            if (q == null)
            {
                q = a(type, class1);
                if (q == null)
                {
                    return b(type, class1);
                }
            }
        }
        return q;
    }

    public String toString()
    {
        return a.toString();
    }
}
