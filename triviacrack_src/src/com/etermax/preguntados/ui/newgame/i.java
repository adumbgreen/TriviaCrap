// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.RoomDTO;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            g, j

public final class i extends g
    implements a, b
{

    private final c h = new c();
    private View i;

    public i()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        e();
        d = com.etermax.preguntados.datasource.e.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            a = (RoomDTO)bundle.getSerializable("roomDTO");
            b = bundle.getLong("timeToClose");
            c = bundle.getBoolean("firstInit");
            return;
        }
    }

    public static j d()
    {
        return new j();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mSelectedLanguage"))
        {
            e = (Language)bundle.getSerializable("mSelectedLanguage");
        }
    }

    public void a(a a1)
    {
        f = (TextView)a1.findViewById(0x7f0a0565);
        g = a1.findViewById(0x7f0a0564);
        View view = a1.findViewById(0x7f0a0560);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view1)
                {
                    a.c();
                }

            
            {
                a = i.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int k)
    {
        if (i == null)
        {
            return null;
        } else
        {
            return i.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(h);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        i = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (i == null)
        {
            i = layoutinflater.inflate(0x7f03014b, viewgroup, false);
        }
        return i;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("roomDTO", a);
        bundle.putLong("timeToClose", b);
        bundle.putBoolean("firstInit", c);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        h.a(this);
    }
}
