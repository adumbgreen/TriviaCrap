// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.e.d;
import com.etermax.preguntados.sharing.o;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.preguntados.ui.withoutcoins.h;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            k, n

public final class m extends k
    implements a, b
{

    private final c r = new c();
    private View s;

    public m()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        j();
        b = com.etermax.preguntados.g.b.a(getActivity());
        e = d.a(getActivity());
        g = h.a(getActivity());
        d = com.etermax.preguntados.c.a.c.a(getActivity());
        f = o.a(getActivity());
        a = e.a(getActivity());
        c = com.etermax.preguntados.ui.game.a.b.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            q = bundle.getBoolean("mHasReportedQuestion");
            return;
        }
    }

    public static n i()
    {
        return new n();
    }

    private void j()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mQuestion"))
            {
                k = (QuestionDTO)bundle.getSerializable("mQuestion");
            }
            if (bundle.containsKey("mPowerUpFree"))
            {
                p = (PowerUp)bundle.getSerializable("mPowerUpFree");
            }
            if (bundle.containsKey("mUsedPowerUps"))
            {
                o = (ArrayList)bundle.getSerializable("mUsedPowerUps");
            }
            if (bundle.containsKey("mDuelModeTheme"))
            {
                i = (g)bundle.getSerializable("mDuelModeTheme");
            }
            if (bundle.containsKey("mSelectedAnswer"))
            {
                l = (Integer)bundle.getSerializable("mSelectedAnswer");
            }
            if (bundle.containsKey("mHeaderColor"))
            {
                n = bundle.getInt("mHeaderColor");
            }
            if (bundle.containsKey("mGameType"))
            {
                h = (GameType)bundle.getSerializable("mGameType");
            }
            if (bundle.containsKey("mTitle"))
            {
                m = bundle.getString("mTitle");
            }
            if (bundle.containsKey("mQuestionsCount"))
            {
                j = bundle.getInt("mQuestionsCount");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a02b4);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final m a;

                public void onClick(View view5)
                {
                    a.g();
                }

            
            {
                a = m.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a02b2);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final m a;

                public void onClick(View view5)
                {
                    a.d();
                }

            
            {
                a = m.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a02b3);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final m a;

                public void onClick(View view5)
                {
                    a.c();
                }

            
            {
                a = m.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a02b0);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final m a;

                public void onClick(View view5)
                {
                    a.e();
                }

            
            {
                a = m.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a0113);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final m a;

                public void onClick(View view5)
                {
                    a.f();
                }

            
            {
                a = m.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int l)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.findViewById(l);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(r);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        s = super.onCreateView(layoutinflater, viewgroup, bundle);
        return s;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("mHasReportedQuestion", q);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        r.a(this);
    }
}
