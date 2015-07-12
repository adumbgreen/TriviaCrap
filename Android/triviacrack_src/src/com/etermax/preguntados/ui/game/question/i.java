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
//            h, c, j

public final class i extends com.etermax.preguntados.ui.game.question.h
    implements a, b
{

    private Handler A;
    private final c y = new c();
    private View z;

    public i()
    {
        A = new Handler(Looper.getMainLooper());
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        j();
        h = h.a(getActivity());
        g = com.etermax.preguntados.c.a.c.a(getActivity());
        f = com.etermax.preguntados.ui.d.j.g(getActivity());
        e = d.c(getActivity());
        a = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        j = com.etermax.preguntados.ui.withoutcoins.h.a(getActivity());
        c = com.etermax.preguntados.ui.game.a.b.a(getActivity());
        b = e.a(getActivity());
        i = com.etermax.preguntados.e.d.a(getActivity());
        d = com.etermax.preguntados.g.b.a(getActivity());
        b();
    }

    static void a(i k, long l)
    {
        k.com.etermax.preguntados.ui.game.question.c.a(l);
    }

    public static com.etermax.preguntados.ui.game.question.j i()
    {
        return new com.etermax.preguntados.ui.game.question.j();
    }

    private void j()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mHeaderColor"))
            {
                q = bundle.getInt("mHeaderColor");
            }
            if (bundle.containsKey("mGameId"))
            {
                k = bundle.getLong("mGameId");
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
            if (bundle.containsKey("mTitle"))
            {
                p = bundle.getString("mTitle");
            }
            if (bundle.containsKey("mCountDownElapsedTime"))
            {
                t = bundle.getLong("mCountDownElapsedTime");
            }
            if (bundle.containsKey("mDuelModeTheme"))
            {
                m = (g)bundle.getSerializable("mDuelModeTheme");
            }
            if (bundle.containsKey("mGameType"))
            {
                l = (GameType)bundle.getSerializable("mGameType");
            }
            if (bundle.containsKey("mPowerUpFree"))
            {
                u = (PowerUp)bundle.getSerializable("mPowerUpFree");
            }
            if (bundle.containsKey("mQuestion"))
            {
                r = (QuestionDTO)bundle.getSerializable("mQuestion");
            }
            if (bundle.containsKey("mUsername"))
            {
                x = bundle.getString("mUsername");
            }
            if (bundle.containsKey("mFacebookId"))
            {
                w = bundle.getString("mFacebookId");
            }
        }
    }

    public void a(long l)
    {
        A.post(new Runnable(l) {

            final long a;
            final i b;

            public void run()
            {
                com.etermax.preguntados.ui.game.question.i.a(b, a);
            }

            
            {
                b = i.this;
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

                final i a;

                public void onClick(View view4)
                {
                    a.g();
                }

            
            {
                a = i.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a028b);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = i.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a028e);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = i.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0294);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view4)
                {
                    a.h();
                }

            
            {
                a = i.this;
                super();
            }
            });
        }
        c();
    }

    public View findViewById(int k)
    {
        if (z == null)
        {
            return null;
        } else
        {
            return z.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(y);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        z = super.onCreateView(layoutinflater, viewgroup, bundle);
        return z;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        y.a(this);
    }
}
