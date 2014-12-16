// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.a.c;
import com.millennialmedia.a.a.a.d;
import com.millennialmedia.a.a.b;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class g
    implements t, Cloneable
{

    public static final g a = new g();
    private double b;
    private int c;
    private boolean d;
    private boolean e;
    private List f;
    private List g;

    public g()
    {
        b = -1D;
        c = 136;
        d = true;
        f = Collections.emptyList();
        g = Collections.emptyList();
    }

    private boolean a(c c1)
    {
        return c1 == null || c1.a() <= b;
    }

    private boolean a(c c1, d d1)
    {
        return a(c1) && a(d1);
    }

    private boolean a(d d1)
    {
        return d1 == null || d1.a() > b;
    }

    private boolean a(Class class1)
    {
        return !java/lang/Enum.isAssignableFrom(class1) && (class1.isAnonymousClass() || class1.isLocalClass());
    }

    private boolean b(Class class1)
    {
        return class1.isMemberClass() && !c(class1);
    }

    private boolean c(Class class1)
    {
        return (8 & class1.getModifiers()) != 0;
    }

    protected g a()
    {
        g g1;
        try
        {
            g1 = (g)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new AssertionError();
        }
        return g1;
    }

    public s a(e e1, a a1)
    {
        Class class1 = a1.a();
        boolean flag = a(class1, true);
        boolean flag1 = a(class1, false);
        if (!flag && !flag1)
        {
            return null;
        } else
        {
            return new s(flag1, flag, e1, a1) {

                final boolean a;
                final boolean b;
                final e c;
                final a d;
                final g e;
                private s f;

                private s a()
                {
                    s s1 = f;
                    if (s1 != null)
                    {
                        return s1;
                    } else
                    {
                        s s2 = c.a(e, d);
                        f = s2;
                        return s2;
                    }
                }

                public void a(com.millennialmedia.a.a.d.c c1, Object obj)
                {
                    if (b)
                    {
                        c1.f();
                        return;
                    } else
                    {
                        a().a(c1, obj);
                        return;
                    }
                }

                public Object b(com.millennialmedia.a.a.d.a a2)
                {
                    if (a)
                    {
                        a2.n();
                        return null;
                    } else
                    {
                        return a().b(a2);
                    }
                }

            
            {
                e = g.this;
                a = flag;
                b = flag1;
                c = e1;
                d = a1;
                super();
            }
            };
        }
    }

    public boolean a(Class class1, boolean flag)
    {
        if (b != -1D && !a((c)class1.getAnnotation(com/millennialmedia/a/a/a/c), (d)class1.getAnnotation(com/millennialmedia/a/a/a/d)))
        {
            return true;
        }
        if (!d && b(class1))
        {
            return true;
        }
        if (a(class1))
        {
            return true;
        }
        List list;
        Iterator iterator;
        if (flag)
        {
            list = f;
        } else
        {
            list = g;
        }
        for (iterator = list.iterator(); iterator.hasNext();)
        {
            if (((com.millennialmedia.a.a.a)iterator.next()).a(class1))
            {
                return true;
            }
        }

        return false;
    }

    public boolean a(Field field, boolean flag)
    {
label0:
        {
            if ((c & field.getModifiers()) != 0)
            {
                return true;
            }
            if (b != -1D && !a((c)field.getAnnotation(com/millennialmedia/a/a/a/c), (d)field.getAnnotation(com/millennialmedia/a/a/a/d)))
            {
                return true;
            }
            if (field.isSynthetic())
            {
                return true;
            }
            if (e)
            {
                com.millennialmedia.a.a.a.a a1 = (com.millennialmedia.a.a.a.a)field.getAnnotation(com/millennialmedia/a/a/a/a);
                if (a1 == null || (flag ? !a1.a() : !a1.b()))
                {
                    return true;
                }
            }
            if (!d && b(field.getType()))
            {
                return true;
            }
            if (a(field.getType()))
            {
                return true;
            }
            List list;
            b b1;
            Iterator iterator;
            if (flag)
            {
                list = f;
            } else
            {
                list = g;
            }
            if (list.isEmpty())
            {
                break label0;
            }
            b1 = new b(field);
            iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
            } while (!((com.millennialmedia.a.a.a)iterator.next()).a(b1));
            return true;
        }
        return false;
    }

    protected Object clone()
    {
        return a();
    }

}
