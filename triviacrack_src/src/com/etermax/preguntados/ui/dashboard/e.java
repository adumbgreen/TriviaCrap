// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.gamescommon.b.ag;
import com.etermax.gamescommon.b.p;
import com.etermax.gamescommon.dashboard.a;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.notification.b;
import com.etermax.gamescommon.version.VersionManager;
import com.etermax.h;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.DashboardDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.InboxDTO;
import com.etermax.preguntados.datasource.dto.LivesConfigDTO;
import com.etermax.preguntados.datasource.dto.LivesDTO;
import com.etermax.preguntados.datasource.dto.OpponentListDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.dashboard.widget.c;
import com.etermax.preguntados.ui.shop.ShopActivity;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.widget.a.f;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.pulltorefresh.PullToRefreshListView;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.b.d.j;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            h, j, g, f, 
//            i

public class e extends a
    implements com.etermax.gamescommon.menu.a.e, b, com.etermax.preguntados.ui.dashboard.h, com.etermax.preguntados.ui.dashboard.j, com.etermax.tools.widget.b.b
{

    d c;
    com.etermax.gamescommon.login.datasource.a d;
    com.etermax.gamescommon.menu.a.d e;
    com.etermax.gamescommon.login.datasource.c f;
    com.etermax.tools.f.a g;
    com.etermax.preguntados.ui.game.a.a h;
    com.etermax.gamescommon.notification.d i;
    com.etermax.tools.social.a.b j;
    com.etermax.preguntados.g.a k;
    com.etermax.gamescommon.social.a l;
    com.etermax.gamescommon.c.a m;
    com.etermax.gamescommon.e n;
    VersionManager o;
    com.etermax.tools.b.a p;
    boolean q;
    private CountDownTimer r;
    private f s;
    private com.etermax.preguntados.ui.dashboard.i t;

    public e()
    {
        q = false;
    }

    private void D()
    {
        if (!(new com.etermax.tools.i.a() {

        final e a;

        public Object a()
        {
            return b();
        }

        protected void a(e e1, DashboardDTO dashboarddto)
        {
            super.a(e1, dashboarddto);
            if (a.a(dashboarddto))
            {
                e1.b(dashboarddto);
                com.etermax.preguntados.ui.dashboard.e.a(e1);
                ((com.etermax.preguntados.ui.dashboard.f)com.etermax.preguntados.ui.dashboard.e.b(a)).a(dashboarddto);
                if (dashboarddto.getLives().getQuantity() < dashboarddto.getLives().getMax() && !dashboarddto.getLives().isUnlimited())
                {
                    com.etermax.preguntados.ui.dashboard.e.c(e1);
                }
                com.etermax.preguntados.ui.dashboard.e.d(e1).h();
                return;
            } else
            {
                e.e(e1);
                return;
            }
        }

        protected void a(e e1, Exception exception)
        {
            super.a(e1, exception);
            com.etermax.preguntados.ui.dashboard.e.f(e1);
        }

        protected volatile void a(Object obj, Exception exception)
        {
            a((e)obj, exception);
        }

        protected volatile void a(Object obj, Object obj1)
        {
            a((e)obj, (DashboardDTO)obj1);
        }

        public DashboardDTO b()
        {
            return a.c.f();
        }

            
            {
                a = e.this;
                super();
            }
    }).a(this))
        {
            f();
        }
    }

    private void E()
    {
        (new com.etermax.tools.i.a() {

            final e a;

            public Object a()
            {
                return b();
            }

            protected void a(e e1, Void void1)
            {
                super.a(e1, void1);
                a.l();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (Void)obj1);
            }

            public Void b()
            {
                a.c.k();
                return null;
            }

            
            {
                a = e.this;
                super();
            }
        }).a(this);
    }

    private Language F()
    {
        String s1 = getActivity().getSharedPreferences("last_played_language", 0).getString("selected_flag_item_tag", null);
        if (s1 == null)
        {
            s1 = org.b.d.j.c(Locale.getDefault().getLanguage());
            if (s1.equals("GB"))
            {
                s1 = "EN_UK";
            }
            if (s1.equals("BR"))
            {
                s1 = "PT_BR";
            }
            com.etermax.a.a.a("NewGameFragment", (new StringBuilder()).append("DEFAULT LANGUAGE FOR THIS DEVICE: ").append(s1).toString());
        }
        return Language.get(s1);
    }

    private void G()
    {
        if (c.q().isUnlimited())
        {
            I();
            ((ImageView)getView().findViewById(i.lives_image)).setImageResource(h.icon_live_infinite);
            ((TextView)getView().findViewById(i.lives_remaining_time)).setText(getString(o.full));
            getView().findViewById(i.lives_count).setVisibility(4);
            return;
        }
        ((ImageView)getView().findViewById(i.lives_image)).setImageResource(h.icon_live);
        getView().findViewById(i.lives_count).setVisibility(0);
        if (c.q().getQuantity() >= c.q().getMax())
        {
            I();
            ((TextView)getView().findViewById(i.lives_remaining_time)).setText(getString(o.full));
        } else
        {
            getView().findViewById(i.lives_count).setVisibility(0);
        }
        ((TextView)getView().findViewById(i.lives_count)).setText(String.valueOf(c.q().getQuantity()));
    }

    private void H()
    {
        int i1 = c.q().getNextIncrement();
        if (i1 > 0)
        {
            I();
            r = new CountDownTimer(i1 * 1000, 250L) {

                final e a;

                public void onFinish()
                {
                    com.etermax.preguntados.ui.dashboard.e.h(a);
                    if (a.c.q().getQuantity() < a.c.q().getMax() && !a.c.q().isUnlimited())
                    {
                        com.etermax.preguntados.ui.dashboard.e.c(a);
                    }
                }

                public void onTick(long l1)
                {
                    String s1 = com.etermax.preguntados.h.c.b(1000 * a.c.q().getNextIncrement());
                    ((TextView)a.getView().findViewById(i.lives_remaining_time)).setText(s1);
                }

            
            {
                a = e.this;
                super(l1, l2);
            }
            };
            r.start();
        }
    }

    private void I()
    {
        if (r != null)
        {
            r.cancel();
        }
    }

    private void a(OpponentListDTO opponentlistdto)
    {
        List list = opponentlistdto.getFriends();
        int i1 = o.try_out;
        Object aobj[] = new Object[1];
        aobj[0] = getString(o.app_name);
        String s1 = getString(i1, aobj);
        int j1 = Math.min(48, list.size());
        String s2 = "";
        for (int k1 = 0; k1 < j1;)
        {
            String s3 = (new StringBuilder()).append(s2).append(((UserDTO)list.get(k1)).getFacebook_id()).append(",").toString();
            k1++;
            s2 = s3;
        }

        j.a(getActivity(), s1, s2, new com.etermax.tools.social.a.g() {

            final e a;

            public void a()
            {
            }

            public void a(String s4)
            {
                if (a.getActivity() != null)
                {
                    Toast.makeText(a.getActivity(), o.facebook_invite_failure, 0).show();
                    Toast.makeText(a.getActivity(), (new StringBuilder()).append("Facebook Error: ").append(s4).toString(), 0).show();
                }
            }

            public void b()
            {
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    static void a(e e1)
    {
        e1.f();
    }

    static void a(e e1, OpponentListDTO opponentlistdto)
    {
        e1.a(opponentlistdto);
    }

    static void a(e e1, String s1)
    {
        e1.c(s1);
    }

    static Object b(e e1)
    {
        return e1.mCallbacks;
    }

    static void c(e e1)
    {
        e1.H();
    }

    private void c(String s1)
    {
        p p1 = new p();
        p1.a(s1);
        g.a(p1);
    }

    static com.etermax.preguntados.ui.dashboard.i d(e e1)
    {
        return e1.t;
    }

    static void e(e e1)
    {
        e1.f();
    }

    static void f(e e1)
    {
        e1.f();
    }

    static Object g(e e1)
    {
        return e1.mCallbacks;
    }

    static void h(e e1)
    {
        e1.G();
    }

    public static Fragment n()
    {
        return new com.etermax.preguntados.ui.dashboard.g();
    }

    public void A()
    {
        ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).q();
    }

    public void B()
    {
        ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).r();
    }

    public com.etermax.preguntados.ui.dashboard.widget.a C()
    {
        if (c.j() != null)
        {
            return new c(getApplicationContext(), this);
        }
        if (c.s().getDuelGamesEnabled())
        {
            return new com.etermax.preguntados.ui.dashboard.widget.b(getApplicationContext(), this);
        } else
        {
            return null;
        }
    }

    protected com.etermax.gamescommon.dashboard.a.a.b a(long l1)
    {
        if (t == null)
        {
            t = new com.etermax.preguntados.ui.dashboard.i(this, this, this, this, this, getApplicationContext(), d);
        }
        t.a(l1);
        return t;
    }

    public void a(int i1)
    {
        TextView textview = (TextView)getView().findViewById(i.unreadMessages);
        if (i1 <= 0)
        {
            textview.setVisibility(8);
            return;
        }
        if (i1 > 99)
        {
            textview.setText("99");
        } else
        {
            textview.setText(String.valueOf(i1));
        }
        k.a(com.etermax.preguntados.g.a.x);
        textview.setVisibility(0);
    }

    public void a(Bundle bundle)
    {
    }

    protected void a(GameDTO gamedto)
    {
label0:
        {
            if (gamedto != null)
            {
                if ((!gamedto.isPendingMyApproval() || gamedto.isRandomOpponent() || gamedto.getGameType() != null && gamedto.getGameType() != GameType.NORMAL) && (gamedto.getGameType() != GameType.DUEL_GAME || !gamedto.isMyTurn() || gamedto.getDuelCreator() == null || gamedto.getDuelCreator().getId().equals(Long.valueOf(d.e())) || com.etermax.tools.j.h.a(getApplicationContext()).compareTo(gamedto.getExpiration_date()) >= 0))
                {
                    break label0;
                }
                ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).d(gamedto);
            }
            return;
        }
        ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).c(gamedto);
    }

    public void a(InboxDTO inboxdto)
    {
        int i1;
        View view;
        if (inboxdto != null)
        {
            i1 = inboxdto.getTotal();
        } else
        {
            i1 = 0;
        }
        view = getView().findViewById(i.inbox_container);
        if (i1 == 0)
        {
            view.setVisibility(4);
            return;
        } else
        {
            ((TextView)view.findViewById(i.inbox_counter)).setText(String.valueOf(i1));
            view.setVisibility(0);
            return;
        }
    }

    protected void a(g g1)
    {
        if (!g().c())
        {
            a((GameDTO)g1.c());
        }
    }

    protected void a(com.etermax.tools.widget.a.i i1)
    {
        if (!c.B())
        {
            ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).a(c.q(), c.r());
            return;
        } else
        {
            ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).a(F(), (UserDTO)i1.a());
            return;
        }
    }

    public void a(com.etermax.tools.widget.pulltorefresh.c c1)
    {
        PullToRefreshListView pulltorefreshlistview = g();
        if (pulltorefreshlistview != null)
        {
            pulltorefreshlistview.setLoadingAnimation(c1);
        }
    }

    public void a(Long long1)
    {
        ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).a(long1);
    }

    protected void a(Object obj)
    {
        h.t();
        h.s();
        super.a(obj);
    }

    protected boolean a(DashboardDTO dashboarddto)
    {
        return o.checkVersionUpdate(dashboarddto.getVersionStatus(), getActivity());
    }

    public boolean a_(Bundle bundle)
    {
        String s1 = bundle.getString("data.TYPE");
        if (TextUtils.isEmpty(s1) || !s1.equals("NEW_MESSAGE"))
        {
            c.h();
            l();
            return true;
        } else
        {
            return false;
        }
    }

    protected void b(long l1)
    {
        List list = c.i();
        if (list == null || list.size() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator = list.iterator();
_L6:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        GameDTO gamedto = (GameDTO)iterator.next();
        if (gamedto.getId() != l1) goto _L6; else goto _L5
_L5:
        a(gamedto);
_L2:
        return;
_L4:
        gamedto = null;
        if (true) goto _L5; else goto _L7
_L7:
    }

    protected void b(DashboardDTO dashboarddto)
    {
        super.a(dashboarddto);
        ((TextView)getView().findViewById(i.coins_textview)).setText(String.valueOf(c.t()));
        ((TextView)getView().findViewById(i.spins_textview)).setText(String.valueOf(c.u()));
        getView().findViewById(i.secondary_nav_bar).setVisibility(0);
        G();
        a(dashboarddto.getInbox());
        a(dashboarddto.getUnreadConversations());
        r();
    }

    public void b(String s1)
    {
        com.etermax.preguntados.a.c.a a1 = new com.etermax.preguntados.a.c.a();
        a1.a(s1);
        g.a(a1);
    }

    protected void c()
    {
        if (b())
        {
            q();
            return;
        } else
        {
            l.a(getActivity(), new com.etermax.gamescommon.social.c() {

                final e a;

                public void a()
                {
                    com.etermax.preguntados.ui.dashboard.e.a(a, "click_inbox");
                }

                public void b()
                {
                }

                public void c()
                {
                }

            
            {
                a = e.this;
                super();
            }
            });
            return;
        }
    }

    protected void d()
    {
        c.h();
        super.d();
    }

    public Object getDummyCallbacks()
    {
        return o();
    }

    public void i()
    {
        a(e.l());
    }

    public boolean k()
    {
        if (c.j() != null)
        {
            return false;
        } else
        {
            return super.k();
        }
    }

    protected void l()
    {
        e();
        D();
    }

    protected f m()
    {
        if (s == null)
        {
            s = new com.etermax.gamescommon.dashboard.a.b.a();
        }
        return s;
    }

    public com.etermax.preguntados.ui.dashboard.f o()
    {
        return new com.etermax.preguntados.ui.dashboard.f() {

            final e a;

            public void a(int i1, int j1)
            {
            }

            public void a(Language language, UserDTO userdto)
            {
            }

            public void a(DashboardDTO dashboarddto)
            {
            }

            public void a(LivesDTO livesdto, LivesConfigDTO livesconfigdto)
            {
            }

            public void a(Long long1)
            {
            }

            public void b(LivesDTO livesdto, LivesConfigDTO livesconfigdto)
            {
            }

            public void c(GameDTO gamedto)
            {
            }

            public void d(GameDTO gamedto)
            {
            }

            public void p()
            {
            }

            public void q()
            {
            }

            public void r()
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void onAccept(Bundle bundle)
    {
        if (bundle == null)
        {
            k.a(com.etermax.preguntados.g.a.t);
            E();
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        i.b(this);
    }

    public void onResume()
    {
        super.onResume();
        i.a(this);
        if (d.q())
        {
            l();
        }
        f.g();
    }

    public void onStart()
    {
        super.onStart();
        e.a(getActivity());
        e.a(this);
        a(new com.etermax.preguntados.ui.dashboard.widget.g(getApplicationContext()));
    }

    public void onStop()
    {
        super.onStop();
        e.b(getActivity());
        e.b(this);
        I();
    }

    public void p()
    {
        if (com.etermax.tools.g.a.a())
        {
            getView().findViewById(i.dashboard_header_text_view).setOnLongClickListener(new android.view.View.OnLongClickListener() {

                final e a;

                public boolean onLongClick(View view)
                {
                    ((com.etermax.preguntados.ui.dashboard.f)com.etermax.preguntados.ui.dashboard.e.g(a)).p();
                    return false;
                }

            
            {
                a = e.this;
                super();
            }
            });
        }
    }

    public void q()
    {
        (new com.etermax.gamescommon.j.a(j) {

            final e a;

            protected void a(e e1, OpponentListDTO opponentlistdto)
            {
                super.a(e1, opponentlistdto);
                com.etermax.preguntados.ui.dashboard.e.a(a, opponentlistdto);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (OpponentListDTO)obj1);
            }

            protected OpponentListDTO b()
            {
                return a.c.A();
            }

            protected Object d()
            {
                return b();
            }

            
            {
                a = e.this;
                super(b1);
            }
        }).a(this);
    }

    public void r()
    {
        SharedPreferences sharedpreferences = getActivity().getSharedPreferences("launch_data", 0);
        String s1 = sharedpreferences.getString("launch_data", "");
        sharedpreferences.edit().putString("launch_data", "").commit();
        if (s1.contains("facebook"))
        {
            Uri uri = Uri.parse(s1);
            g.a(new ag());
            j.a(getActivity(), uri);
        }
    }

    public void s()
    {
        k.a(com.etermax.preguntados.g.a.z);
        if (!c.B())
        {
            ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).a(c.q(), c.r());
            b("play");
            return;
        } else
        {
            ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).a(c.t(), c.u());
            return;
        }
    }

    public void t()
    {
        com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(o.dialog_remove_games), getString(o.ok), getString(o.cancel));
        a1.setTargetFragment(this, 0);
        a1.show(getFragmentManager(), "delete_games_confirmation");
    }

    public void u()
    {
label0:
        {
            if (!c.q().isUnlimited())
            {
                b("stats_bar");
                if (c.q().getQuantity() != 0)
                {
                    break label0;
                }
                ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).a(c.q(), c.r());
            }
            return;
        }
        ((com.etermax.preguntados.ui.dashboard.f)mCallbacks).b(c.q(), c.r());
    }

    public void v()
    {
        k.a(com.etermax.preguntados.g.a.B);
        startActivity(ShopActivity.a(getActivity(), c.u(), "dashboard_header"));
    }

    public void w()
    {
        k.a(com.etermax.preguntados.g.a.B);
        startActivity(ShopActivity.a(getActivity(), c.u(), "dashboard_header"));
    }

    public void x()
    {
        ((BaseFragmentActivity)getActivity()).z();
    }

    public void y()
    {
        ((BaseFragmentActivity)getActivity()).A();
    }

    public boolean z()
    {
        return c.j() != null || c.s().getDuelGamesEnabled();
    }
}
