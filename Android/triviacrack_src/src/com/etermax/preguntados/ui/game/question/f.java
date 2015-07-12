// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.h;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.d.j;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.tools.f.d;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            c, g

public final class f extends com.etermax.preguntados.ui.game.question.c
    implements a, b
{

    private final c w = new c();
    private View x;
    private Handler y;

    public f()
    {
        y = new Handler(Looper.getMainLooper());
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        j();
        f = com.etermax.preguntados.ui.d.j.g(getActivity());
        a = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        h = h.a(getActivity());
        e = d.c(getActivity());
        j = com.etermax.preguntados.ui.withoutcoins.h.a(getActivity());
        d = com.etermax.preguntados.g.b.a(getActivity());
        g = com.etermax.preguntados.c.a.c.a(getActivity());
        i = com.etermax.preguntados.e.d.a(getActivity());
        b = e.a(getActivity());
        c = com.etermax.preguntados.ui.game.a.b.a(getActivity());
        b();
    }

    static void a(f f1, long l)
    {
        f1.com.etermax.preguntados.ui.game.question.c.a(l);
    }

    public static com.etermax.preguntados.ui.game.question.g i()
    {
        return new com.etermax.preguntados.ui.game.question.g();
    }

    private void j()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mCountDownElapsedTime"))
            {
                t = bundle.getLong("mCountDownElapsedTime");
            }
            if (bundle.containsKey("mDuelModeTheme"))
            {
                m = (g)bundle.getSerializable("mDuelModeTheme");
            }
            if (bundle.containsKey("mGameId"))
            {
                k = bundle.getLong("mGameId");
            }
            if (bundle.containsKey("mPowerUpFree"))
            {
                u = (PowerUp)bundle.getSerializable("mPowerUpFree");
            }
            if (bundle.containsKey("mTitle"))
            {
                p = bundle.getString("mTitle");
            }
            if (bundle.containsKey("mGameType"))
            {
                l = (GameType)bundle.getSerializable("mGameType");
            }
            if (bundle.containsKey("mQuestionsCount"))
            {
                n = bundle.getInt("mQuestionsCount");
            }
            if (bundle.containsKey("mUsedPowerUps"))
            {
                s = (ArrayList)bundle.getSerializable("mUsedPowerUps");
            }
            if (bundle.containsKey("mSpinType"))
            {
                o = (SpinType)bundle.getSerializable("mSpinType");
            }
            if (bundle.containsKey("mQuestion"))
            {
                r = (QuestionDTO)bundle.getSerializable("mQuestion");
            }
            if (bundle.containsKey("mHeaderColor"))
            {
                q = bundle.getInt("mHeaderColor");
            }
        }
    }

    public void a(long l)
    {
        y.post(new Runnable(l) {

            final long a;
            final f b;

            public void run()
            {
                com.etermax.preguntados.ui.game.question.f.a(b, a);
            }

            
            {
                b = f.this;
                a = l;
                super();
            }
        });
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0291);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view4)
                {
                    a.g();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a028b);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a028e);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0294);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view4)
                {
                    a.h();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        c();
    }

    public View findViewById(int k)
    {
        if (x == null)
        {
            return null;
        } else
        {
            return x.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(w);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = super.onCreateView(layoutinflater, viewgroup, bundle);
        return x;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        w.a(this);
    }
}
