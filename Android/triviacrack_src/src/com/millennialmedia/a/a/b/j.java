// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Set;

// Referenced classes of package com.millennialmedia.a.a.b:
//            p, l, k, m, 
//            n

public final class j extends AbstractMap
    implements Serializable
{

    static final boolean g;
    private static final Comparator h = new Comparator() {

        public int a(Comparable comparable, Comparable comparable1)
        {
            return comparable.compareTo(comparable1);
        }

        public int compare(Object obj, Object obj1)
        {
            return a((Comparable)obj, (Comparable)obj1);
        }

    };
    Comparator a;
    p b[];
    final p c;
    int d;
    int e;
    int f;
    private m i;
    private n j;

    public j()
    {
        this(h);
    }

    public j(Comparator comparator)
    {
        d = 0;
        e = 0;
        if (comparator == null)
        {
            comparator = h;
        }
        a = comparator;
        c = new p();
        b = new p[16];
        f = b.length / 2 + b.length / 4;
    }

    private static int a(int i1)
    {
        int j1 = i1 ^ (i1 >>> 20 ^ i1 >>> 12);
        return j1 ^ j1 >>> 7 ^ j1 >>> 4;
    }

    private void a()
    {
        b = a(b);
        f = b.length / 2 + b.length / 4;
    }

    private void a(p p1)
    {
        p p2 = p1.b;
        p p3 = p1.c;
        p p4 = p3.b;
        p p5 = p3.c;
        p1.c = p4;
        if (p4 != null)
        {
            p4.a = p1;
        }
        a(p1, p3);
        p3.b = p1;
        p1.a = p3;
        int i1;
        int j1;
        int k1;
        int l1;
        if (p2 != null)
        {
            i1 = p2.i;
        } else
        {
            i1 = 0;
        }
        if (p4 != null)
        {
            j1 = p4.i;
        } else
        {
            j1 = 0;
        }
        p1.i = 1 + Math.max(i1, j1);
        k1 = p1.i;
        l1 = 0;
        if (p5 != null)
        {
            l1 = p5.i;
        }
        p3.i = 1 + Math.max(k1, l1);
    }

    private void a(p p1, p p2)
    {
        p p3 = p1.a;
        p1.a = null;
        if (p2 != null)
        {
            p2.a = p3;
        }
        if (p3 != null)
        {
            if (p3.b == p1)
            {
                p3.b = p2;
                return;
            }
            if (!g && p3.c != p1)
            {
                throw new AssertionError();
            } else
            {
                p3.c = p2;
                return;
            }
        } else
        {
            int i1 = p1.g & -1 + b.length;
            b[i1] = p2;
            return;
        }
    }

    private boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    static p[] a(p ap[])
    {
        int i1 = ap.length;
        p ap1[] = new p[i1 * 2];
        l l1 = new l();
        k k1 = new k();
        k k2 = new k();
        int j1 = 0;
        while (j1 < i1) 
        {
            p p1 = ap[j1];
            if (p1 != null)
            {
                l1.a(p1);
                int i2 = 0;
                int j2 = 0;
                do
                {
                    p p2 = l1.a();
                    if (p2 == null)
                    {
                        break;
                    }
                    if ((i1 & p2.g) == 0)
                    {
                        j2++;
                    } else
                    {
                        i2++;
                    }
                } while (true);
                p p3;
                if (j2 > 0 && i2 > 0)
                {
                    k1.a(j2);
                    k2.a(i2);
                    l1.a(p1);
                    do
                    {
                        p p4 = l1.a();
                        if (p4 == null)
                        {
                            break;
                        }
                        if ((i1 & p4.g) == 0)
                        {
                            k1.a(p4);
                        } else
                        {
                            k2.a(p4);
                        }
                    } while (true);
                    p1 = k1.a();
                    p3 = k2.a();
                } else
                if (j2 > 0)
                {
                    p3 = null;
                } else
                {
                    p3 = p1;
                    p1 = null;
                }
                ap1[j1] = p1;
                ap1[j1 + i1] = p3;
            }
            j1++;
        }
        return ap1;
    }

    private void b(p p1)
    {
        p p2 = p1.b;
        p p3 = p1.c;
        p p4 = p2.b;
        p p5 = p2.c;
        p1.b = p5;
        if (p5 != null)
        {
            p5.a = p1;
        }
        a(p1, p2);
        p2.c = p1;
        p1.a = p2;
        int i1;
        int j1;
        int k1;
        int l1;
        if (p3 != null)
        {
            i1 = p3.i;
        } else
        {
            i1 = 0;
        }
        if (p5 != null)
        {
            j1 = p5.i;
        } else
        {
            j1 = 0;
        }
        p1.i = 1 + Math.max(i1, j1);
        k1 = p1.i;
        l1 = 0;
        if (p4 != null)
        {
            l1 = p4.i;
        }
        p2.i = 1 + Math.max(k1, l1);
    }

    private void b(p p1, boolean flag)
    {
_L11:
        if (p1 == null) goto _L2; else goto _L1
_L1:
        p p2;
        p p3;
        int i1;
        int j1;
        int k1;
        p2 = p1.b;
        p3 = p1.c;
        p p6;
        p p7;
        if (p2 != null)
        {
            i1 = p2.i;
        } else
        {
            i1 = 0;
        }
        if (p3 != null)
        {
            j1 = p3.i;
        } else
        {
            j1 = 0;
        }
        k1 = i1 - j1;
        if (k1 != -2) goto _L4; else goto _L3
_L3:
        p6 = p3.b;
        p7 = p3.c;
        int k2;
        int l2;
        int i3;
        if (p7 != null)
        {
            k2 = p7.i;
        } else
        {
            k2 = 0;
        }
        if (p6 != null)
        {
            l2 = p6.i;
        } else
        {
            l2 = 0;
        }
        i3 = l2 - k2;
        if (i3 == -1 || i3 == 0 && !flag)
        {
            a(p1);
        } else
        {
            if (!g && i3 != 1)
            {
                throw new AssertionError();
            }
            b(p3);
            a(p1);
        }
        if (!flag) goto _L5; else goto _L2
_L2:
        return;
_L4:
        if (k1 != 2) goto _L7; else goto _L6
_L6:
        p p4 = p2.b;
        p p5 = p2.c;
        int l1;
        int i2;
        int j2;
        if (p5 != null)
        {
            l1 = p5.i;
        } else
        {
            l1 = 0;
        }
        if (p4 != null)
        {
            i2 = p4.i;
        } else
        {
            i2 = 0;
        }
        j2 = i2 - l1;
        if (j2 == 1 || j2 == 0 && !flag)
        {
            b(p1);
        } else
        {
            if (!g && j2 != -1)
            {
                throw new AssertionError();
            }
            a(p2);
            b(p1);
        }
        if (flag) goto _L2; else goto _L5
_L5:
        p1 = p1.a;
        continue; /* Loop/switch isn't completed */
_L7:
        if (k1 != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        p1.i = i1 + 1;
        if (flag)
        {
            return;
        }
        if (true) goto _L5; else goto _L8
_L8:
        if (!g && k1 != -1 && k1 != 1)
        {
            throw new AssertionError();
        }
        p1.i = 1 + Math.max(i1, j1);
        if (flag) goto _L5; else goto _L9
_L9:
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    p a(Object obj)
    {
        p p1 = null;
        if (obj != null)
        {
            p p2;
            try
            {
                p2 = a(obj, false);
            }
            catch (ClassCastException classcastexception)
            {
                return null;
            }
            p1 = p2;
        }
        return p1;
    }

    p a(Object obj, boolean flag)
    {
        Comparator comparator;
        p ap[];
        int i1;
        int j1;
        p p1;
        comparator = a;
        ap = b;
        i1 = a(obj.hashCode());
        j1 = i1 & -1 + ap.length;
        p1 = ap[j1];
        if (p1 == null) goto _L2; else goto _L1
_L1:
        p p2;
        Comparable comparable;
        int i2;
        if (comparator == h)
        {
            comparable = (Comparable)obj;
        } else
        {
            comparable = null;
        }
_L11:
        if (comparable != null)
        {
            i2 = comparable.compareTo(p1.f);
        } else
        {
            i2 = comparator.compare(obj, p1.f);
        }
        if (i2 != 0) goto _L4; else goto _L3
_L3:
        p2 = p1;
_L8:
        return p2;
_L4:
        int k1;
        p p3;
        p p5;
        if (i2 < 0)
        {
            p5 = p1.b;
        } else
        {
            p5 = p1.c;
        }
        if (p5 != null) goto _L6; else goto _L5
_L5:
        k1 = i2;
_L13:
        p2 = null;
        if (!flag) goto _L8; else goto _L7
_L7:
        p3 = c;
        if (p1 != null) goto _L10; else goto _L9
_L6:
        p1 = p5;
          goto _L11
_L9:
        p p4;
        if (comparator == h && !(obj instanceof Comparable))
        {
            throw new ClassCastException((new StringBuilder()).append(obj.getClass().getName()).append(" is not Comparable").toString());
        }
        p4 = new p(p1, obj, i1, p3, p3.e);
        ap[j1] = p4;
_L12:
        int l1 = d;
        d = l1 + 1;
        if (l1 > f)
        {
            a();
        }
        e = 1 + e;
        return p4;
_L10:
        p4 = new p(p1, obj, i1, p3, p3.e);
        if (k1 < 0)
        {
            p1.b = p4;
        } else
        {
            p1.c = p4;
        }
        b(p1, true);
        if (true) goto _L12; else goto _L2
_L2:
        k1 = 0;
          goto _L13
    }

    p a(java.util.Map.Entry entry)
    {
        p p1 = a(entry.getKey());
        boolean flag;
        if (p1 != null && a(p1.h, entry.getValue()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return p1;
        } else
        {
            return null;
        }
    }

    void a(p p1, boolean flag)
    {
        if (flag)
        {
            p1.e.d = p1.d;
            p1.d.e = p1.e;
            p1.e = null;
            p1.d = null;
        }
        p p2 = p1.b;
        p p3 = p1.c;
        p p4 = p1.a;
        if (p2 != null && p3 != null)
        {
            p p5;
            p p6;
            int i1;
            p p7;
            int j1;
            if (p2.i > p3.i)
            {
                p5 = p2.b();
            } else
            {
                p5 = p3.a();
            }
            a(p5, false);
            p6 = p1.b;
            if (p6 != null)
            {
                i1 = p6.i;
                p5.b = p6;
                p6.a = p5;
                p1.b = null;
            } else
            {
                i1 = 0;
            }
            p7 = p1.c;
            j1 = 0;
            if (p7 != null)
            {
                j1 = p7.i;
                p5.c = p7;
                p7.a = p5;
                p1.c = null;
            }
            p5.i = 1 + Math.max(i1, j1);
            a(p1, p5);
            return;
        }
        if (p2 != null)
        {
            a(p1, p2);
            p1.b = null;
        } else
        if (p3 != null)
        {
            a(p1, p3);
            p1.c = null;
        } else
        {
            a(p1, ((p) (null)));
        }
        b(p4, false);
        d = -1 + d;
        e = 1 + e;
    }

    p b(Object obj)
    {
        p p1 = a(obj);
        if (p1 != null)
        {
            a(p1, true);
        }
        return p1;
    }

    public void clear()
    {
        Arrays.fill(b, null);
        d = 0;
        e = 1 + e;
        p p1 = c;
        p p3;
        for (p p2 = p1.d; p2 != p1; p2 = p3)
        {
            p3 = p2.d;
            p2.e = null;
            p2.d = null;
        }

        p1.e = p1;
        p1.d = p1;
    }

    public boolean containsKey(Object obj)
    {
        return a(obj) != null;
    }

    public Set entrySet()
    {
        m m1 = i;
        if (m1 != null)
        {
            return m1;
        } else
        {
            m m2 = new m(this);
            i = m2;
            return m2;
        }
    }

    public Object get(Object obj)
    {
        p p1 = a(obj);
        if (p1 != null)
        {
            return p1.h;
        } else
        {
            return null;
        }
    }

    public Set keySet()
    {
        n n1 = j;
        if (n1 != null)
        {
            return n1;
        } else
        {
            n n2 = new n(this);
            j = n2;
            return n2;
        }
    }

    public Object put(Object obj, Object obj1)
    {
        if (obj == null)
        {
            throw new NullPointerException("key == null");
        } else
        {
            p p1 = a(obj, true);
            Object obj2 = p1.h;
            p1.h = obj1;
            return obj2;
        }
    }

    public Object remove(Object obj)
    {
        p p1 = b(obj);
        if (p1 != null)
        {
            return p1.h;
        } else
        {
            return null;
        }
    }

    public int size()
    {
        return d;
    }

    static 
    {
        boolean flag;
        if (!com/millennialmedia/a/a/b/j.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
    }
}
