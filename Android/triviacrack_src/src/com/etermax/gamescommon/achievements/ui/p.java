// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            n, m, q

public final class p extends n
    implements a, b
{

    private final c i = new c();
    private View j;

    public p()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        e();
        a = com.etermax.gamescommon.achievements.ui.m.a(getActivity());
    }

    public static q d()
    {
        return new q();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mAchievements"))
        {
            h = (ArrayList)bundle.getSerializable("mAchievements");
        }
    }

    public void a(a a1)
    {
        e = (TextView)a1.findViewById(0x7f0a008a);
        f = (LinearLayout)a1.findViewById(0x7f0a0086);
        b = (ImageView)a1.findViewById(0x7f0a0047);
        c = (TextView)a1.findViewById(0x7f0a0048);
        d = (TextView)a1.findViewById(0x7f0a0080);
        View view = a1.findViewById(0x7f0a0085);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final p a;

                public void onClick(View view1)
                {
                    a.c();
                }

            
            {
                a = p.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int k)
    {
        if (j == null)
        {
            return null;
        } else
        {
            return j.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(i);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (j == null)
        {
            j = layoutinflater.inflate(0x7f03001e, viewgroup, false);
        }
        return j;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        i.a(this);
    }
}
