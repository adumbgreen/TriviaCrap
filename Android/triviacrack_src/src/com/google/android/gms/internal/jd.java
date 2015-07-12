// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            am, ik, jc, jb, 
//            ew, o, fo, fg, 
//            fh, y, du, dh, 
//            dc, fm

final class jd
{

    public final jb a;
    public final String b;
    public final Context c;
    public final ik d = new ik(new jc(this));
    public final ew e;
    public o f;
    public fo g;
    public am h;
    public fg i;
    public fh j;
    public y k;
    public du l;
    public dh m;
    public dc n;
    public fm o;
    public boolean p;
    private HashSet q;

    public jd(Context context, am am1, String s, ew ew)
    {
        o = null;
        p = false;
        q = null;
        if (am1.e)
        {
            a = null;
        } else
        {
            a = new jb(context);
            a.setMinimumWidth(am1.g);
            a.setMinimumHeight(am1.d);
            a.setVisibility(4);
        }
        h = am1;
        b = s;
        c = context;
        e = ew;
    }

    public HashSet a()
    {
        return q;
    }

    public void a(HashSet hashset)
    {
        q = hashset;
    }
}
