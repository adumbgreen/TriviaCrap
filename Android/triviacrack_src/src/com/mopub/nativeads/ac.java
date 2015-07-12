// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import com.mopub.common.logging.MoPubLog;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.mopub.nativeads:
//            s, NativeResponse

class ac
{

    public static final int NOT_FOUND = -1;
    private final int a[] = new int[200];
    private final int b[] = new int[200];
    private int c;
    private final int d[] = new int[200];
    private final int e[] = new int[200];
    private final s f[] = new s[200];
    private int g;

    private ac(int ai[])
    {
        c = 0;
        g = 0;
        c = Math.min(ai.length, 200);
        System.arraycopy(ai, 0, b, 0, c);
        System.arraycopy(ai, 0, a, 0, c);
    }

    private static int a(int ai[], int k, int l)
    {
        int i1 = a(ai, 0, k, l);
        if (i1 < 0)
        {
            return ~i1;
        }
        for (int j1 = ai[i1]; i1 >= 0 && ai[i1] == j1; i1--) { }
        return i1 + 1;
    }

    private static int a(int ai[], int k, int l, int i1)
    {
        int j1 = l - 1;
        int k1;
        for (k1 = k; k1 <= j1;)
        {
            int l1 = k1 + j1 >>> 1;
            int i2 = ai[l1];
            if (i2 < i1)
            {
                k1 = l1 + 1;
            } else
            if (i2 > i1)
            {
                j1 = l1 - 1;
            } else
            {
                return l1;
            }
        }

        return ~k1;
    }

    static ac a()
    {
        return new ac(new int[0]);
    }

    static ac a(MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        int k = 0;
        List list = mopubclientpositioning.a();
        int l = mopubclientpositioning.b();
        int i1;
        int ai[];
        Iterator iterator;
        int j1;
        if (l == 0x7fffffff)
        {
            i1 = list.size();
        } else
        {
            i1 = 200;
        }
        ai = new int[i1];
        iterator = list.iterator();
        j1 = 0;
        while (iterator.hasNext()) 
        {
            j1 = ((Integer)iterator.next()).intValue() - k;
            int l1 = k + 1;
            ai[k] = j1;
            k = l1;
        }
        int k1;
        for (; k < i1; k = k1)
        {
            j1 = -1 + (j1 + l);
            k1 = k + 1;
            ai[k] = j1;
        }

        return new ac(ai);
    }

    private static int b(int ai[], int k, int l)
    {
        int i1 = a(ai, 0, k, l);
        if (i1 < 0)
        {
            i1 = ~i1;
        } else
        {
            int j1 = ai[i1];
            while (i1 < k && ai[i1] == j1) 
            {
                i1++;
            }
        }
        return i1;
    }

    int a(int k, int l)
    {
        int ai[] = new int[g];
        int ai1[] = new int[g];
        int i1 = 0;
        int j1 = 0;
        while (i1 < g) 
        {
            int k2 = d[i1];
            int l2 = e[i1];
            if (k <= l2 && l2 < l)
            {
                ai[j1] = k2;
                ai1[j1] = l2 - j1;
                f[i1].b().destroy();
                f[i1] = null;
                j1++;
            } else
            if (j1 > 0)
            {
                int i3 = i1 - j1;
                d[i3] = k2;
                e[i3] = l2 - j1;
                f[i3] = f[i1];
            }
            i1++;
        }
        if (j1 == 0)
        {
            return 0;
        }
        int k1 = ai1[0];
        int l1 = a(b, c, k1);
        int i2 = -1 + c;
        int j2;
        do
        {
            j2 = 0;
            if (i2 < l1)
            {
                break;
            }
            a[i2 + j1] = a[i2];
            b[i2 + j1] = b[i2] - j1;
            i2--;
        } while (true);
        for (; j2 < j1; j2++)
        {
            a[l1 + j2] = ai[j2];
            b[l1 + j2] = ai1[j2];
        }

        c = j1 + c;
        g = g - j1;
        return j1;
    }

    void a(int k, s s1)
    {
        int l = a(b, c, k);
        if (l == c || b[l] != k)
        {
            MoPubLog.w("Attempted to insert an ad at an invalid position");
        } else
        {
            int i1 = a[l];
            int j1 = b(d, g, i1);
            if (j1 < g)
            {
                int i2 = g - j1;
                System.arraycopy(d, j1, d, j1 + 1, i2);
                System.arraycopy(e, j1, e, j1 + 1, i2);
                System.arraycopy(f, j1, f, j1 + 1, i2);
            }
            d[j1] = i1;
            e[j1] = k;
            f[j1] = s1;
            g = 1 + g;
            int k1 = -1 + (c - l);
            System.arraycopy(b, l + 1, b, l, k1);
            System.arraycopy(a, l + 1, a, l, k1);
            for (c = -1 + c; l < c; l++)
            {
                int ai1[] = b;
                ai1[l] = 1 + ai1[l];
            }

            int l1 = j1 + 1;
            while (l1 < g) 
            {
                int ai[] = e;
                ai[l1] = 1 + ai[l1];
                l1++;
            }
        }
    }

    boolean a(int k)
    {
        int l = a(b, 0, c, k);
        boolean flag = false;
        if (l >= 0)
        {
            flag = true;
        }
        return flag;
    }

    int b(int k)
    {
        int l = b(b, c, k);
        if (l == c)
        {
            return -1;
        } else
        {
            return b[l];
        }
    }

    void b(int k, int l)
    {
        j(k);
        i(l);
    }

    int[] b()
    {
        int ai[] = new int[g];
        System.arraycopy(e, 0, ai, 0, g);
        return ai;
    }

    void c()
    {
        if (g == 0)
        {
            return;
        } else
        {
            a(0, 1 + e[-1 + g]);
            return;
        }
    }

    boolean c(int k)
    {
        int l = a(e, 0, g, k);
        boolean flag = false;
        if (l >= 0)
        {
            flag = true;
        }
        return flag;
    }

    s d(int k)
    {
        int l = a(e, 0, g, k);
        if (l < 0)
        {
            return null;
        } else
        {
            return f[l];
        }
    }

    int e(int k)
    {
        int l = a(e, 0, g, k);
        if (l < 0)
        {
            return k - ~l;
        } else
        {
            return -1;
        }
    }

    int f(int k)
    {
        return k + b(d, g, k);
    }

    int g(int k)
    {
        byte byte0 = -1;
        if (k == 0)
        {
            byte0 = 0;
        } else
        {
            int l = e(k - 1);
            if (l != byte0)
            {
                return l + 1;
            }
        }
        return byte0;
    }

    int h(int k)
    {
        if (k == 0)
        {
            return 0;
        } else
        {
            return 1 + f(k - 1);
        }
    }

    void i(int k)
    {
        for (int l = a(a, c, k); l < c; l++)
        {
            int ai2[] = a;
            ai2[l] = 1 + ai2[l];
            int ai3[] = b;
            ai3[l] = 1 + ai3[l];
        }

        for (int i1 = a(d, g, k); i1 < g; i1++)
        {
            int ai[] = d;
            ai[i1] = 1 + ai[i1];
            int ai1[] = e;
            ai1[i1] = 1 + ai1[i1];
        }

    }

    void j(int k)
    {
        for (int l = b(a, c, k); l < c; l++)
        {
            int ai2[] = a;
            ai2[l] = -1 + ai2[l];
            int ai3[] = b;
            ai3[l] = -1 + ai3[l];
        }

        for (int i1 = b(d, g, k); i1 < g; i1++)
        {
            int ai[] = d;
            ai[i1] = -1 + ai[i1];
            int ai1[] = e;
            ai1[i1] = -1 + ai1[i1];
        }

    }
}
