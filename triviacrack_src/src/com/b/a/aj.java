// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.b.a:
//            ai, ar

public final class aj
{

    private Uri a;
    private int b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;
    private float g;
    private float h;
    private float i;
    private boolean j;
    private List k;
    private android.graphics.Bitmap.Config l;

    aj(Uri uri, int i1)
    {
        a = uri;
        b = i1;
    }

    public aj a(int i1, int j1)
    {
        if (i1 <= 0)
        {
            throw new IllegalArgumentException("Width must be positive number.");
        }
        if (j1 <= 0)
        {
            throw new IllegalArgumentException("Height must be positive number.");
        } else
        {
            c = i1;
            d = j1;
            return this;
        }
    }

    public aj a(ar ar)
    {
        if (ar == null)
        {
            throw new IllegalArgumentException("Transformation must not be null.");
        }
        if (k == null)
        {
            k = new ArrayList(2);
        }
        k.add(ar);
        return this;
    }

    boolean a()
    {
        return a != null || b != 0;
    }

    boolean b()
    {
        return c != 0;
    }

    public ai c()
    {
        if (f && e)
        {
            throw new IllegalStateException("Center crop and center inside can not be used together.");
        }
        if (e && c == 0)
        {
            throw new IllegalStateException("Center crop requires calling resize.");
        }
        if (f && c == 0)
        {
            throw new IllegalStateException("Center inside requires calling resize.");
        } else
        {
            return new ai(a, b, k, c, d, e, f, g, h, i, j, l, null);
        }
    }
}
