// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.os.CountDownTimer;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.TextView;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.RoomDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.tools.i.a;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            i, j, h

public class g extends b
{

    RoomDTO a;
    long b;
    boolean c;
    protected d d;
    Language e;
    TextView f;
    View g;
    private CountDownTimer h;

    public g()
    {
        c = true;
    }

    public static Fragment a(Language language)
    {
        return com.etermax.preguntados.ui.newgame.i.d().a(language).a();
    }

    private void a(int k)
    {
        long l;
        if (b == 0L)
        {
            l = k * 1000;
        } else
        {
            l = b;
        }
        h = new CountDownTimer(l, 500L) {

            final g a;

            public void onFinish()
            {
                a.b = 0L;
                com.etermax.preguntados.ui.newgame.g.a(a);
            }

            public void onTick(long l1)
            {
                a.f.setText((new StringBuilder()).append(Integer.toString((int)(l1 / 1000L))).append("\"").toString());
                a.b = l1;
            }

            
            {
                a = g.this;
                super(l, l1);
            }
        };
        h.start();
    }

    static void a(g g1)
    {
        g1.d();
    }

    static void a(g g1, int k)
    {
        g1.a(k);
    }

    static Object b(g g1)
    {
        return g1.mCallbacks;
    }

    private void d()
    {
        (new a() {

            final g a;

            public Object a()
            {
                if (a.a == null)
                {
                    GameRequestDTO gamerequestdto = new GameRequestDTO(GameType.DUEL_GAME, a.e);
                    a.a = a.d.b(gamerequestdto);
                } else
                {
                    a.a = a.d.h(a.a.getId());
                }
                return a.a;
            }

            protected void a(g g1, RoomDTO roomdto)
            {
                a.c = false;
                if (roomdto.getGame() != null)
                {
                    ((h)com.etermax.preguntados.ui.newgame.g.b(a)).a(roomdto.getGame());
                    return;
                } else
                {
                    com.etermax.preguntados.ui.newgame.g.a(a, roomdto.getCountdown());
                    return;
                }
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((g)obj, (RoomDTO)obj1);
            }

            
            {
                a = g.this;
                super();
            }
        }).a(this);
    }

    public h a()
    {
        return new h() {

            final g a;

            public void a(GameDTO gamedto)
            {
            }

            public void b()
            {
            }

            
            {
                a = g.this;
                super();
            }
        };
    }

    public void b()
    {
        d();
    }

    public void c()
    {
        ((h)mCallbacks).b();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onStart()
    {
        super.onStart();
        if (!c)
        {
            a(a.getCountdown());
        }
    }

    public void onStop()
    {
        super.onStop();
        if (h != null)
        {
            h.cancel();
            h = null;
        }
    }
}
