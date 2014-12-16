// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.gamescommon.datasource.l;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.h;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.EventDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinDTO;
import com.etermax.preguntados.datasource.dto.SpinQuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinsDataDTO;
import com.etermax.preguntados.datasource.dto.enums.DuelPlayerStatus;
import com.etermax.preguntados.datasource.dto.enums.GameEvent;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.g.a;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView;
import com.etermax.preguntados.ui.game.category.widget.CategoryChargesView;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            k, l, j

public class i extends b
    implements com.etermax.gamescommon.notification.b, com.etermax.tools.widget.b.b
{

    protected static boolean q;
    GameDTO a;
    com.etermax.tools.b.a b;
    d c;
    com.etermax.gamescommon.login.datasource.a d;
    a e;
    com.etermax.preguntados.ui.d.i f;
    com.etermax.preguntados.ui.game.a.a g;
    com.etermax.tools.f.a h;
    com.etermax.gamescommon.social.a i;
    com.etermax.preguntados.ui.a.a j;
    com.etermax.gamescommon.achievements.ui.k k;
    com.etermax.preguntados.c.a.b l;
    com.etermax.gamescommon.notification.d m;
    com.etermax.gamescommon.login.datasource.c n;
    l o;
    m p;
    private boolean r;
    private long s;
    private boolean t;
    private com.etermax.preguntados.ui.game.category.widget.a u;
    private com.etermax.preguntados.ui.game.category.wheel.b v;

    public i()
    {
        s = 0L;
        u = new com.etermax.preguntados.ui.game.category.widget.a() {

            final i a;

            public void a(int i1)
            {
                boolean flag = true;
                if (a.a.isMyTurn())
                {
                    com.etermax.preguntados.ui.game.category.i.a(a, flag);
                }
                boolean flag1 = com.etermax.preguntados.ui.game.category.i.a(a, i1);
                boolean flag2 = false;
                if (flag1)
                {
                    flag2 = flag;
                }
                if (!com.etermax.preguntados.ui.game.category.i.a(a))
                {
                    flag = flag2;
                }
                if (!flag)
                {
                    if (a.a.isLevelUp() && !i.q && a.a.getMyPlayerInfo().getCharges() != 3)
                    {
                        ((j)com.etermax.preguntados.ui.game.category.i.b(a)).j();
                    } else
                    if (a.a.hasNewAchievements() && a.a.getMyPlayerInfo().getCharges() != 3 && !i.q)
                    {
                        a.k.a();
                        return;
                    }
                }
            }

            
            {
                a = i.this;
                super();
            }
        };
        v = new com.etermax.preguntados.ui.game.category.wheel.b() {

            final i a;

            public void a()
            {
                a.getView().findViewById(com.etermax.i.wheel_view).setEnabled(false);
                com.etermax.preguntados.ui.game.category.i.b(a, true);
                com.etermax.preguntados.ui.game.category.i.a(a, false);
                if (i.e(a))
                {
                    a.e.a(a.e);
                    com.etermax.preguntados.ui.game.category.i.a(a, a.a);
                    com.etermax.preguntados.ui.game.category.i.c(a, false);
                    return;
                } else
                {
                    com.etermax.preguntados.ui.game.category.i.f(a);
                    return;
                }
            }

            public void a(Object obj)
            {
                if (obj != null)
                {
                    a.a = (GameDTO)obj;
                    if (((GameDTO)obj).getQuestionType() == SpinType.CROWN)
                    {
                        ((CategoryChargesView)a.getView().findViewById(com.etermax.i.charges_view)).setCharges(3);
                    } else
                    {
                        ((j)com.etermax.preguntados.ui.game.category.i.c(a)).b(a.a);
                        com.etermax.preguntados.ui.game.category.i.a(a, true);
                    }
                    com.etermax.preguntados.ui.game.category.i.b(a, false);
                    ((j)com.etermax.preguntados.ui.game.category.i.d(a)).a(false);
                }
            }

            public void a(boolean flag)
            {
                if (System.currentTimeMillis() - com.etermax.preguntados.ui.game.category.i.g(a) > 100L && com.etermax.preguntados.ui.game.category.i.h(a))
                {
                    a.e.a(a.D);
                    int i1;
                    if (flag)
                    {
                        i1 = com.etermax.b.spin_button_rotation_clockwise;
                    } else
                    {
                        i1 = com.etermax.b.spin_button_rotation_counter_clockwise;
                    }
                    a.j.a(a.getView().findViewById(com.etermax.i.spin_button_image), i1);
                    com.etermax.preguntados.ui.game.category.i.a(a, System.currentTimeMillis());
                }
            }

            
            {
                a = i.this;
                super();
            }
        };
        r = true;
    }

    static long a(i i1, long l1)
    {
        i1.s = l1;
        return l1;
    }

    public static Fragment a(GameDTO gamedto)
    {
        return com.etermax.preguntados.ui.game.category.k.i().a(gamedto).a();
    }

    private void a(EventDTO eventdto)
    {
        int i1 = eventdto.getChallengerScore();
        int j1 = eventdto.getChallengedScore();
        String s1 = a.getOpponent().getName();
        String s2 = getString(l.a(eventdto.getRequestedCrown()).getNameResource());
        String s3 = getString(l.a(eventdto.getOfferedCrown()).getNameResource());
        int k1;
        String s4;
        String s5;
        if (eventdto.getMe() == DuelPlayerStatus.CHALLENGER)
        {
            if (eventdto.isWin())
            {
                k1 = a.o;
                s4 = getString(o.DUEL_ENDED_WON, new Object[] {
                    s1
                });
                if (j1 == i1)
                {
                    s5 = getString(o.trivia_challenge_result_tie_won_01, new Object[] {
                        s1, s2
                    });
                } else
                {
                    int k2 = o.trivia_challenge_result_won_01;
                    Object aobj3[] = new Object[4];
                    aobj3[0] = Integer.valueOf(i1);
                    aobj3[1] = Integer.valueOf(j1);
                    aobj3[2] = s1;
                    aobj3[3] = s2;
                    s5 = getString(k2, aobj3);
                }
            } else
            {
                k1 = a.p;
                s4 = getString(o.DUEL_ENDED_LOST, new Object[] {
                    s1
                });
                if (j1 == i1)
                {
                    s5 = getString(o.trivia_challenge_result_tie_lost_01, new Object[] {
                        s3
                    });
                } else
                {
                    int j2 = o.trivia_challenge_result_lost_01;
                    Object aobj2[] = new Object[3];
                    aobj2[0] = Integer.valueOf(j1);
                    aobj2[1] = Integer.valueOf(i1);
                    aobj2[2] = s3;
                    s5 = getString(j2, aobj2);
                }
            }
        } else
        if (eventdto.isWin())
        {
            k1 = a.o;
            s4 = getString(o.DUEL_ENDED_WON, new Object[] {
                s1
            });
            if (j1 == i1)
            {
                s5 = getString(o.trivia_challenge_result_tie_won_02, new Object[] {
                    s2
                });
            } else
            {
                int i2 = o.trivia_challenge_result_won_02;
                Object aobj1[] = new Object[3];
                aobj1[0] = Integer.valueOf(j1);
                aobj1[1] = Integer.valueOf(i1);
                aobj1[2] = s2;
                s5 = getString(i2, aobj1);
            }
        } else
        {
            k1 = a.p;
            s4 = getString(o.DUEL_ENDED_LOST, new Object[] {
                s1
            });
            if (j1 == i1)
            {
                s5 = getString(o.trivia_challenge_result_tie_lost_02, new Object[] {
                    s2, s1
                });
            } else
            {
                int l1 = o.trivia_challenge_result_lost_02;
                Object aobj[] = new Object[4];
                aobj[0] = Integer.valueOf(i1);
                aobj[1] = Integer.valueOf(j1);
                aobj[2] = s2;
                aobj[3] = s1;
                s5 = getString(l1, aobj);
            }
        }
        a(s4, s5, eventdto.isWin());
        e.a(k1);
    }

    static void a(i i1, GameDTO gamedto)
    {
        i1.c(gamedto);
    }

    static void a(i i1, boolean flag)
    {
        i1.a(flag);
    }

    private void a(String s1, String s2, boolean flag)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("dialogAcceptButtonListener", 4);
        bundle.putBoolean("dialog_duel_result", flag);
        c c1 = com.etermax.tools.widget.b.c.c(s1, s2, getString(o.accept), bundle);
        c1.setTargetFragment(this, 0);
        c1.show(getActivity().getSupportFragmentManager(), "duel_ended");
    }

    private void a(boolean flag)
    {
        if (getView() != null)
        {
            getView().findViewById(com.etermax.i.resign_game_button).setEnabled(flag);
            getView().findViewById(com.etermax.i.stat_game_button).setEnabled(flag);
            getView().findViewById(com.etermax.i.chat_icon).setEnabled(flag);
            getView().findViewById(com.etermax.i.spin_button_image).setEnabled(flag);
            getView().findViewById(com.etermax.i.user_2_view).findViewById(com.etermax.i.right_tile_view).setClickable(flag);
        }
    }

    private boolean a(int i1)
    {
        if (!b(a)) goto _L2; else goto _L1
_L1:
        if (i1 != 3) goto _L4; else goto _L3
_L3:
        ((j)mCallbacks).c(a);
_L2:
        return false;
_L4:
        if (i1 > 0 && i1 < 3)
        {
            if (i1 == 1 && f.a(getApplicationContext(), "tutorial_first_charge"))
            {
                q();
                return true;
            }
            if (i1 == 2 && f.a(getApplicationContext(), "tutorial_second_charge"))
            {
                q();
                return true;
            }
            e.a(a.s);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    static boolean a(i i1)
    {
        return i1.p();
    }

    static boolean a(i i1, int j1)
    {
        return i1.a(j1);
    }

    static Object b(i i1)
    {
        return i1.mCallbacks;
    }

    private void b(long l1)
    {
        o.a(Integer.valueOf(com.etermax.preguntados.notification.b.a.a()), Long.valueOf(l1), null);
    }

    private void b(boolean flag)
    {
        ((j)mCallbacks).b(a, flag);
    }

    private static boolean b(GameDTO gamedto)
    {
        return !gamedto.isEnded() && gamedto.isMyTurn();
    }

    static boolean b(i i1, boolean flag)
    {
        i1.t = flag;
        return flag;
    }

    static Object c(i i1)
    {
        return i1.mCallbacks;
    }

    private void c(GameDTO gamedto)
    {
        int i1 = 0;
        if (gamedto != null)
        {
            if (gamedto.getQuestionType() == SpinType.CROWN)
            {
                i1 = l.a().length;
            } else
            {
                com.etermax.preguntados.datasource.dto.enums.QuestionCategory questioncategory = ((SpinQuestionDTO)((SpinDTO)gamedto.getSpins_data().getSpins().get(0)).getQuestions().get(0)).getQuestion().getCategory();
                i1 = l.c(questioncategory);
            }
        }
        ((CategoryWheelView)getView().findViewById(com.etermax.i.wheel_view)).a(i1, gamedto);
    }

    static boolean c(i i1, boolean flag)
    {
        i1.r = flag;
        return flag;
    }

    static Object d(i i1)
    {
        return i1.mCallbacks;
    }

    static boolean e(i i1)
    {
        return i1.r;
    }

    static void f(i i1)
    {
        i1.k();
    }

    static long g(i i1)
    {
        return i1.s;
    }

    static boolean h(i i1)
    {
        return i1.t;
    }

    static Object i(i i1)
    {
        return i1.mCallbacks;
    }

    private void i()
    {
        if (!b(a))
        {
            getView().findViewById(com.etermax.i.spin_button_image).setEnabled(false);
            ((TextView)getView().findViewById(com.etermax.i.spin_button_image)).setText(getString(o.waiting));
            getView().findViewById(com.etermax.i.wheel_view).setEnabled(false);
            ((ImageView)getView().findViewById(com.etermax.i.wheel_view)).setColorFilter(f.black, android.graphics.PorterDuff.Mode.SRC_ATOP);
            Drawable drawable1 = getResources().getDrawable(h.game_spin_button_background);
            drawable1.setColorFilter(f.black, android.graphics.PorterDuff.Mode.SRC_ATOP);
            getView().findViewById(com.etermax.i.spin_button_image).setBackgroundDrawable(drawable1);
            return;
        } else
        {
            getView().findViewById(com.etermax.i.spin_button_image).setEnabled(true);
            ((TextView)getView().findViewById(com.etermax.i.spin_button_image)).setText(getString(o.spin));
            getView().findViewById(com.etermax.i.wheel_view).setEnabled(true);
            ((ImageView)getView().findViewById(com.etermax.i.wheel_view)).setColorFilter(null);
            Drawable drawable = getResources().getDrawable(h.game_spin_button_background);
            drawable.setColorFilter(null);
            getView().findViewById(com.etermax.i.spin_button_image).setBackgroundDrawable(drawable);
            return;
        }
    }

    private void j()
    {
        e.a(a.e);
        ((CategoryWheelView)getView().findViewById(com.etermax.i.wheel_view)).a();
    }

    private void k()
    {
        (new com.etermax.tools.i.a() {

            final i a;

            public Object a()
            {
                return b();
            }

            protected void a(i i1, GameDTO gamedto)
            {
                super.a(i1, gamedto);
                com.etermax.preguntados.ui.game.category.i.a(a, gamedto);
            }

            protected void a(i i1, Exception exception)
            {
                super.a(i1, exception);
                com.etermax.preguntados.ui.game.category.i.a(a, null);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((i)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((i)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return a.c.c(a.a.getId());
            }

            
            {
                a = i.this;
                super();
            }
        }).a(this);
    }

    private void l()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final i a;

            public Object a()
            {
                return b();
            }

            protected void a(i i1, GameDTO gamedto)
            {
                super.a(i1, gamedto);
                ((j)i.i(a)).a(gamedto);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((i)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return a.c.a(a.a.getId());
            }

            
            {
                a = i.this;
                super(s1);
            }
        }).a(this);
    }

    private void m()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("dialogAcceptButtonListener", 1);
        int i1 = o.DUEL_STARTED;
        Object aobj[] = new Object[1];
        aobj[0] = a.getOpponent().getName();
        com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(i1, aobj), getString(o.trivia_challenge_description), getString(o.play), getString(o.cancel), bundle);
        a1.setCancelable(false);
        a1.setTargetFragment(this, 0);
        a1.show(getActivity().getSupportFragmentManager(), "");
    }

    private void n()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("dialogAcceptButtonListener", 6);
        c c1 = com.etermax.tools.widget.b.c.c(getString(o.final_duel), getString(o.final_duel_txt), getString(o.start), bundle);
        c1.setCancelable(false);
        c1.setTargetFragment(this, 0);
        c1.show(getActivity().getSupportFragmentManager(), "dialog_duel_final_started");
    }

    private void o()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("dialogAcceptButtonListener", 2);
        c c1 = com.etermax.tools.widget.b.c.c(getString(o.character_first_turn_title), getString(o.character_first_turn_txt), getString(o.accept), bundle);
        c1.setTargetFragment(this, 0);
        c1.show(getActivity().getSupportFragmentManager(), "dialog_crowns_exceeded");
    }

    private boolean p()
    {
        if (b(a) && a.getMyPlayerInfo().getCharges() == 0 && a.getAvailableCrowns().size() == 6 && f.a(getApplicationContext(), "tutorial_category_fragment"))
        {
            ((j)mCallbacks).a("tutorial_start");
            return true;
        }
        if (b(a) && f.b(getApplicationContext()) && f.a(getApplicationContext(), "tutorial_you_won"))
        {
            ((j)mCallbacks).g(a);
            return true;
        } else
        {
            return false;
        }
    }

    private void q()
    {
        ((j)mCallbacks).a("tutorial_charges");
    }

    public j a()
    {
        return new j() {

            final i a;

            public void a(GameDTO gamedto)
            {
            }

            public void a(GameDTO gamedto, boolean flag)
            {
            }

            public void a(String s1)
            {
            }

            public void a(boolean flag)
            {
            }

            public void b(GameDTO gamedto)
            {
            }

            public void b(GameDTO gamedto, boolean flag)
            {
            }

            public boolean b()
            {
                return false;
            }

            public void c()
            {
            }

            public void c(GameDTO gamedto)
            {
            }

            public void d()
            {
            }

            public void d(GameDTO gamedto)
            {
            }

            public void e()
            {
            }

            public void e(GameDTO gamedto)
            {
            }

            public void f(GameDTO gamedto)
            {
            }

            public void g(GameDTO gamedto)
            {
            }

            public void j()
            {
            }

            public void n(GameDTO gamedto)
            {
            }

            
            {
                a = i.this;
                super();
            }
        };
    }

    public void a(long l1)
    {
        (new com.etermax.tools.i.a(getString(o.loading), l1) {

            final long a;
            final i b;

            public Object a()
            {
                return b();
            }

            protected void a(i i1, GameDTO gamedto)
            {
                super.a(i1, gamedto);
                b.a = gamedto;
                b.c();
                b.b();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((i)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return b.c.d(a);
            }

            
            {
                b = i.this;
                a = l1;
                super(s1);
            }
        }).a(this);
    }

    public void a(Bundle bundle)
    {
        if (bundle == null) goto _L2; else goto _L1
_L1:
        bundle.getInt("dialogAcceptButtonListener");
        JVM INSTR tableswitch 1 1: default 28
    //                   1 29;
           goto _L2 _L3
_L2:
        return;
_L3:
        ((j)mCallbacks).c();
        return;
    }

    public boolean a_(Bundle bundle)
    {
        String s1 = bundle.getString("data.TYPE");
        String s2 = bundle.getString("data.GID");
        if (!TextUtils.isEmpty(s2))
        {
            int i1 = Integer.parseInt(s2);
            if (!TextUtils.isEmpty(s1) && s1.equals("USER_PLAYED_02") && (long)i1 == a.getId())
            {
                a(i1);
                return true;
            }
        }
        return false;
    }

    protected void b()
    {
        b(a.getId());
        q = false;
        if (a.getEvents() == null) goto _L2; else goto _L1
_L1:
        if (!a.isEnded()) goto _L4; else goto _L3
_L3:
        int j1 = 0;
        boolean flag;
        for (flag = false; j1 < a.getEvents().size() && !flag; j1++)
        {
            if (((EventDTO)a.getEvents().get(j1)).getType() == GameEvent.FINAL_DUEL_ENDED)
            {
                flag = true;
            }
        }

        b(flag);
_L2:
        return;
_L4:
        int i1 = -1 + a.getEvents().size();
_L11:
        if (i1 < 0) goto _L2; else goto _L5
_L5:
        EventDTO eventdto = (EventDTO)a.getEvents().get(i1);
        class _cls7
        {

            static final int a[];

            static 
            {
                a = new int[GameEvent.values().length];
                try
                {
                    a[GameEvent.DUEL_STARTED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[GameEvent.FINAL_DUEL_ENDED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[GameEvent.DUEL_ENDED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[GameEvent.FINAL_DUEL_STARTED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[GameEvent.CROWNS_EXCEDED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        com.etermax.preguntados.ui.game.category._cls7.a[eventdto.getType().ordinal()];
        JVM INSTR tableswitch 1 5: default 184
    //                   1 190
    //                   2 184
    //                   3 201
    //                   4 213
    //                   5 224;
           goto _L6 _L7 _L6 _L8 _L9 _L10
_L6:
        break; /* Loop/switch isn't completed */
_L10:
        break MISSING_BLOCK_LABEL_224;
_L12:
        i1--;
          goto _L11
_L7:
        m();
        q = true;
          goto _L12
_L8:
        a(eventdto);
        q = true;
          goto _L12
_L9:
        n();
        q = true;
          goto _L12
        q = true;
        o();
          goto _L12
    }

    protected void c()
    {
        Locale locale = Locale.US;
        StringBuilder stringbuilder = new StringBuilder();
        int i1 = o.round_;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(a.getRound_number());
        String s1 = String.format(locale, stringbuilder.append(getString(i1, aobj)).append("/").append(c.s().getFinalDuelRounds()).toString(), new Object[0]);
        ((TextView)getView().findViewById(com.etermax.i.category_wheel_header_text_view)).setText(s1);
        ((RelativeLayout)getView().findViewById(com.etermax.i.category_wheel_header)).setBackgroundColor(getResources().getColor(f.category_header_color));
        ((CategoryWheelView)getView().findViewById(com.etermax.i.wheel_view)).setListener(v);
        (new com.etermax.preguntados.ui.dashboard.i()).a(getView(), d, a);
        if (a.isEnded())
        {
            getView().findViewById(com.etermax.i.resign_game_button).setEnabled(false);
        }
        i();
        if (!a.isRandomOpponent()) goto _L2; else goto _L1
_L1:
        getView().findViewById(com.etermax.i.chat_icon).setVisibility(4);
        getView().findViewById(com.etermax.i.resign_game_button).setVisibility(4);
_L4:
        CategoryChargesView categorychargesview = (CategoryChargesView)getView().findViewById(com.etermax.i.charges_view);
        if (a.getMyPlayerInfo().getCharges() > 2)
        {
            a(false);
            getView().findViewById(com.etermax.i.wheel_view).setEnabled(false);
        }
        categorychargesview.setChargeAnimationListener(u);
        categorychargesview.setCharges(a.getMyPlayerInfo().getCharges());
        return;
_L2:
        if (a.getOpponent() != null && (a.getOpponent() instanceof UserDTO))
        {
            UserDTO userdto = (UserDTO)a.getOpponent();
            getView().findViewById(com.etermax.i.user_2_view).findViewById(com.etermax.i.right_tile_view).setOnClickListener(new com.etermax.preguntados.h.g(this, userdto));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void d()
    {
        if (!r)
        {
            t = true;
            ((j)mCallbacks).a(true);
            a(false);
            j();
            k();
        }
    }

    public void e()
    {
        if (((j)mCallbacks).b())
        {
            a(false);
            t = true;
            ((j)mCallbacks).a(true);
            if (r)
            {
                j();
                c(a);
                r = false;
            }
        }
    }

    void f()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("dialogAcceptButtonListener", 0);
        com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(o.dialog_resign), getString(o.resign), getString(o.cancel), bundle);
        a1.setTargetFragment(this, 0);
        a1.show(getFragmentManager(), "resign_confirmation");
    }

    void g()
    {
        ((j)mCallbacks).n(a);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    void h()
    {
        ((j)mCallbacks).d();
    }

    public void onAccept(Bundle bundle)
    {
        if (bundle == null) goto _L2; else goto _L1
_L1:
        bundle.getInt("dialogAcceptButtonListener");
        JVM INSTR tableswitch 0 7: default 56
    //                   0 57
    //                   1 79
    //                   2 62
    //                   3 56
    //                   4 96
    //                   5 56
    //                   6 122
    //                   7 139;
           goto _L2 _L3 _L4 _L5 _L2 _L6 _L2 _L7 _L8
_L2:
        return;
_L3:
        l();
        return;
_L5:
        ((j)mCallbacks).e(a);
        return;
_L4:
        ((j)mCallbacks).d(a);
        return;
_L6:
        boolean flag = bundle.getBoolean("dialog_duel_result", false);
        ((j)mCallbacks).a(a, flag);
        return;
_L7:
        ((j)mCallbacks).f(a);
        return;
_L8:
        ((j)mCallbacks).e();
        return;
    }

    public void onPause()
    {
        m.b(this);
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        m.a(this);
    }

    public void onStop()
    {
        ((CategoryChargesView)getView().findViewById(com.etermax.i.charges_view)).a();
        super.onStop();
    }
}
