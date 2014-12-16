// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.etermax.gamescommon.k;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            e, g

public final class f extends e
    implements a, b
{

    private final c e = new c();
    private View f;

    public f()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        c();
    }

    public static g b()
    {
        return new g();
    }

    private void c()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mUser"))
        {
            a = (k)bundle.getSerializable("mUser");
        }
    }

    public void a(a a1)
    {
        b = (ImageView)a1.findViewById(0x7f0a00a1);
        d = (ProgressBar)a1.findViewById(0x7f0a00a3);
        c = (ImageView)a1.findViewById(0x7f0a00a2);
        a();
    }

    public View findViewById(int i)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(e);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        f = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (f == null)
        {
            f = layoutinflater.inflate(0x7f03002b, viewgroup, false);
        }
        return f;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        e.a(this);
    }
}
