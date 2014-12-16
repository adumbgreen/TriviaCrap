// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.gamescommon.k;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.a.d;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.game.duelmode.h;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.navigation.b;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            c, d, b

public class a extends b
{

    com.etermax.preguntados.c.a.b a;
    com.etermax.tools.f.a b;
    GameDTO c;

    public a()
    {
    }

    private int a(long l)
    {
        int j = (int)(l % 6L);
        return a.d(a.a(j)).a();
    }

    private int a(long l, Boolean boolean1)
    {
        return h.a.a(getApplicationContext(), l);
    }

    private int a(Boolean boolean1)
    {
        return h.a.g();
    }

    public static Fragment a(GameDTO gamedto)
    {
        return com.etermax.preguntados.ui.dashboard.c.e().a(gamedto).a();
    }

    private void a(GameDTO gamedto, TextView textview, TextView textview1, ImageView imageview)
    {
        Resources resources = getResources();
        if (gamedto.getGameType() != null && gamedto.getGameType() != GameType.NORMAL) goto _L2; else goto _L1
_L1:
        String s1;
        int l;
        String s2;
        String s = resources.getString(o.new_game);
        int j = o.notification_new_game;
        Object aobj[] = new Object[1];
        aobj[0] = gamedto.getOpponent().getName();
        s1 = resources.getString(j, aobj);
        l = a(gamedto.getId());
        s2 = s;
_L14:
        textview.setText(s2);
        textview1.setText(s1);
        imageview.setImageResource(l);
        return;
_L2:
        if (gamedto.getGameType() != GameType.DUEL_GAME) goto _L4; else goto _L3
_L3:
        String s3;
        int i1;
        s3 = resources.getString(a(Boolean.valueOf(gamedto.getWorldCupEnabled())));
        i1 = -1 + c.getDuelPlayers().size();
        if (i1 != 1) goto _L6; else goto _L5
_L5:
        Iterator iterator = c.getDuelPlayers().iterator();
_L10:
        if (!iterator.hasNext()) goto _L8; else goto _L7
_L7:
        DuelPlayerDTO duelplayerdto = (DuelPlayerDTO)iterator.next();
        if (duelplayerdto.isMe()) goto _L10; else goto _L9
_L9:
        String s6 = duelplayerdto.getName();
_L12:
        String s4;
        int l1 = o.invited_group_challenge_txt;
        Object aobj2[] = new Object[2];
        aobj2[0] = c.getName();
        aobj2[1] = s6;
        s4 = resources.getString(l1, aobj2);
_L11:
        int k1 = a(gamedto.getId(), Boolean.valueOf(gamedto.getWorldCupEnabled()));
        s2 = s3;
        String s5 = s4;
        l = k1;
        s1 = s5;
        continue; /* Loop/switch isn't completed */
_L6:
        int j1 = o.invited_group_challenge_txt_plural;
        Object aobj1[] = new Object[2];
        aobj1[0] = c.getName();
        aobj1[1] = Integer.valueOf(i1);
        s4 = resources.getString(j1, aobj1);
        if (true) goto _L11; else goto _L8
_L8:
        s6 = "";
        if (true) goto _L12; else goto _L4
_L4:
        s2 = "";
        s1 = "";
        l = 0;
        if (true) goto _L14; else goto _L13
_L13:
    }

    private void a(String s, long l)
    {
        d d1 = new d();
        d1.a(s);
        d1.a(l);
        b.a(d1);
    }

    public com.etermax.preguntados.ui.dashboard.b a()
    {
        return new com.etermax.preguntados.ui.dashboard.b() {

            final a a;

            public void a(GameDTO gamedto)
            {
            }

            public void b(GameDTO gamedto)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void b()
    {
        if (c.getGameType() == GameType.DUEL_GAME)
        {
            a("accepted", ((new Date()).getTime() - c.getCreated().getTime()) / 0x36ee80L);
        }
        ((com.etermax.preguntados.ui.dashboard.b)mCallbacks).a(c);
    }

    public void c()
    {
        if (c.getGameType() == GameType.DUEL_GAME)
        {
            a("rejected", ((new Date()).getTime() - c.getCreated().getTime()) / 0x36ee80L);
        }
        ((com.etermax.preguntados.ui.dashboard.b)mCallbacks).b(c);
    }

    public void d()
    {
        getActivity().getSupportFragmentManager().beginTransaction().remove(this).commit();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(com.etermax.k.dashboard_accept_game_fragment, null);
        TextView textview = (TextView)view.findViewById(i.dashboard_accept_game_title);
        TextView textview1 = (TextView)view.findViewById(i.dashboard_accept_game_subtitle);
        ImageView imageview = (ImageView)view.findViewById(i.dashboard_accept_game_image);
        a(c, textview, textview1, imageview);
        return view;
    }

    public void onPause()
    {
        if (getActivity() instanceof BaseFragmentActivity)
        {
            ((BaseFragmentActivity)getActivity()).x();
        }
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        if (getActivity() instanceof BaseFragmentActivity)
        {
            ((BaseFragmentActivity)getActivity()).y();
        }
    }
}
