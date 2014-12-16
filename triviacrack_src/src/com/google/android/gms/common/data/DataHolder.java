// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.common.data:
//            b, a

public final class DataHolder
    implements SafeParcelable
{

    public static final b CREATOR = new b();
    private static final a l = new a(new String[0], null) {

    };
    Bundle a;
    int b[];
    int c;
    boolean d;
    private final int e;
    private final String f[];
    private final CursorWindow g[];
    private final int h;
    private final Bundle i;
    private Object j;
    private boolean k;

    DataHolder(int i1, String as[], CursorWindow acursorwindow[], int j1, Bundle bundle)
    {
        d = false;
        k = true;
        e = i1;
        f = as;
        g = acursorwindow;
        h = j1;
        i = bundle;
    }

    public void a()
    {
        int i1 = 0;
        a = new Bundle();
        for (int j1 = 0; j1 < f.length; j1++)
        {
            a.putInt(f[j1], j1);
        }

        b = new int[g.length];
        int k1 = 0;
        for (; i1 < g.length; i1++)
        {
            b[i1] = k1;
            int l1 = k1 - g[i1].getStartPosition();
            k1 += g[i1].getNumRows() - l1;
        }

        c = k1;
    }

    int b()
    {
        return e;
    }

    String[] c()
    {
        return f;
    }

    CursorWindow[] d()
    {
        return g;
    }

    public int describeContents()
    {
        return 0;
    }

    public int e()
    {
        return h;
    }

    public Bundle f()
    {
        return i;
    }

    protected void finalize()
    {
        if (!k || g.length <= 0 || g()) goto _L2; else goto _L1
_L1:
        if (j != null) goto _L4; else goto _L3
_L3:
        String s1 = (new StringBuilder()).append("internal object: ").append(toString()).toString();
_L5:
        Log.e("DataBuffer", (new StringBuilder()).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call close() on all DataBuffer extending objects when you are done with them. (").append(s1).append(")").toString());
        h();
_L2:
        super.finalize();
        return;
_L4:
        String s = j.toString();
        s1 = s;
          goto _L5
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public boolean g()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void h()
    {
        this;
        JVM INSTR monitorenter ;
        if (d) goto _L2; else goto _L1
_L1:
        d = true;
        int i1 = 0;
_L3:
        if (i1 >= g.length)
        {
            break; /* Loop/switch isn't completed */
        }
        g[i1].close();
        i1++;
        if (true) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.common.data.b.a(this, parcel, i1);
    }

}
