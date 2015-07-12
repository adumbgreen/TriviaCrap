// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.gamescommon.dashboard.a.c.a;
import com.etermax.gamescommon.dashboard.a.c.c;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.h;
import com.etermax.k;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.preguntados.datasource.dto.PregUserDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.datasource.dto.enums.DuelGamePlayerStatus;
import com.etermax.preguntados.datasource.dto.enums.EndedReason;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.dashboard.widget.DashboardItemView_;
import com.etermax.preguntados.ui.dashboard.widget.d;
import com.etermax.preguntados.ui.game.category.widget.CategoryCrownsView;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.widget.CustomFontTextView;
import com.etermax.tools.widget.a.g;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            h, j

public class i extends a
{

    private Context b;
    private j c;
    private com.etermax.gamescommon.login.datasource.a d;
    private d e;
    private com.etermax.preguntados.ui.dashboard.h f;
    private android.view.View.OnClickListener g = new android.view.View.OnClickListener() {

        final i a;

        public void onClick(View view)
        {
            if (com.etermax.preguntados.ui.dashboard.i.a(a) != null)
            {
                com.etermax.preguntados.ui.dashboard.i.a(a).s();
            }
        }

            
            {
                a = i.this;
                super();
            }
    };
    private android.view.View.OnClickListener h = new android.view.View.OnClickListener() {

        final i a;

        public void onClick(View view)
        {
            if (com.etermax.preguntados.ui.dashboard.i.a(a) != null)
            {
                com.etermax.preguntados.ui.dashboard.i.a(a).t();
            }
        }

            
            {
                a = i.this;
                super();
            }
    };

    public i()
    {
    }

    public i(c c1, j j, com.etermax.gamescommon.dashboard.a.c.b b1, com.etermax.gamescommon.dashboard.a.c.d d1, com.etermax.preguntados.ui.dashboard.h h1, Context context, com.etermax.gamescommon.login.datasource.a a1)
    {
        super(c1, b1, d1);
        c = j;
        b = context;
        d = a1;
        e = new d(context);
        f = h1;
    }

    static j a(i j)
    {
        return j.c;
    }

    private String a(Resources resources, Date date)
    {
        return com.etermax.tools.j.d.a(resources, date.getTime(), g());
    }

    private void a(View view, String s, GameUserDTO gameuserdto)
    {
        TextView textview = (TextView)view.findViewById(com.etermax.i.user_text);
        if (s == null)
        {
            s = "";
        }
        textview.setText(s);
        ((CategoryCrownsView)view.findViewById(com.etermax.i.crowns_view)).setCrowns(gameuserdto.getCrowns());
    }

    static com.etermax.gamescommon.dashboard.a.c.d b(i j)
    {
        return j.a;
    }

    private String b(Resources resources, Date date)
    {
        return com.etermax.tools.j.d.a(resources, g(), date.getTime(), resources.getQuantityString(m.minutes, 1));
    }

    static com.etermax.gamescommon.dashboard.a.c.d c(i j)
    {
        return j.a;
    }

    protected int a(Language language)
    {
        String s = LanguageResourceMapper.getByCode(language).getCode().toString();
        if (d.n() != null)
        {
            String s1 = d.n().toString();
            if (s.compareTo(Language.PT.name()) == 0)
            {
                if (s1.compareTo(Nationality.PT.name()) == 0)
                {
                    return h.country_pt;
                } else
                {
                    return h.country_br;
                }
            }
            if (s.compareTo(Language.EN.name()) == 0)
            {
                if (s1.compareTo(Nationality.US.name()) == 0)
                {
                    return h.country_us;
                } else
                {
                    return h.country_gb;
                }
            }
        }
        return super.a(language);
    }

    public View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(k.dashboard_new_game_button, null);
        ((Button)view.findViewById(com.etermax.i.new_game_button)).setOnClickListener(g);
        return view;
    }

    public void a(View view, com.etermax.gamescommon.login.datasource.a a1, GameDTO gamedto)
    {
        String s;
        View view1;
        ViewSwitcher viewswitcher;
        View view2;
        ViewSwitcher viewswitcher1;
        View view3;
        if (a1.j() != null)
        {
            s = a1.k();
        } else
        {
            s = (new StringBuilder()).append("@").append(a1.g()).toString();
        }
        view1 = view.findViewById(com.etermax.i.user_1_view);
        a(view1, s, gamedto.getMyPlayerInfo());
        viewswitcher = (ViewSwitcher)view1.findViewById(com.etermax.i.left_tile_view);
        viewswitcher.setVisibility(0);
        f().a(viewswitcher, a1.j(), a1.g());
        view2 = view.findViewById(com.etermax.i.user_2_view);
        a(view2, a(((com.etermax.gamescommon.dashboard.a.c.f) (gamedto)), view.getContext()), gamedto.getOpponentPlayerInfo());
        viewswitcher1 = (ViewSwitcher)view2.findViewById(com.etermax.i.right_tile_view);
        viewswitcher1.setVisibility(0);
        f().a(viewswitcher1, gamedto.getOpponent());
        view3 = view.findViewById(com.etermax.i.player_info_container);
        if (gamedto.isMyTurn())
        {
            view3.setBackgroundResource(h.contenedor_avatar);
            return;
        } else
        {
            view3.setBackgroundResource(h.contenedor_avatar_b);
            return;
        }
    }

    public void a(View view, com.etermax.tools.widget.a.h h1)
    {
        Resources resources;
        View view1;
        super.a(view, h1);
        if (b == null)
        {
            return;
        }
        resources = b.getResources();
        view1 = view.findViewById(com.etermax.i.trash_button);
        view1.setOnClickListener(h);
        h1.b();
        JVM INSTR tableswitch 0 6: default 88
    //                   0 150
    //                   1 173
    //                   2 202
    //                   3 225
    //                   4 127
    //                   5 88
    //                   6 247;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L1 _L7
_L1:
        int l;
        int j2 = resources.getColor(f.default_section);
        view1.setVisibility(8);
        l = j2;
_L9:
        ((GradientDrawable)view.findViewById(com.etermax.i.section_container).getBackground()).setColor(l);
        return;
_L6:
        int i2 = resources.getColor(f.suggested_section);
        view1.setVisibility(8);
        l = i2;
        continue; /* Loop/switch isn't completed */
_L2:
        int l1 = resources.getColor(f.your_turn_section);
        view1.setVisibility(8);
        l = l1;
        continue; /* Loop/switch isn't completed */
_L3:
        int k1 = b.getResources().getColor(f.pending_aproval_section);
        view1.setVisibility(8);
        l = k1;
        continue; /* Loop/switch isn't completed */
_L4:
        int j1 = resources.getColor(f.their_turn_section);
        view1.setVisibility(8);
        l = j1;
        continue; /* Loop/switch isn't completed */
_L5:
        int i1 = resources.getColor(f.endend_section);
        view1.setVisibility(0);
        l = i1;
        continue; /* Loop/switch isn't completed */
_L7:
        int j = resources.getColor(f.more_free_games_section);
        view1.setVisibility(8);
        l = j;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void a(View view, Boolean boolean1)
    {
        CustomFontTextView customfonttextview = (CustomFontTextView)view.findViewById(com.etermax.i.facebook_simple_item_title);
        CustomFontTextView customfonttextview1 = (CustomFontTextView)view.findViewById(com.etermax.i.facebook_simple_item_description);
        ImageView imageview = (ImageView)view.findViewById(com.etermax.i.facebook_simple_item_image);
        if (!boolean1.booleanValue())
        {
            customfonttextview.setText(b.getString(o.suggest_fbconnect_title));
            customfonttextview1.setText(b.getString(o.suggest_fbconnect_description));
        } else
        {
            customfonttextview.setText(b.getString(o.suggest_fbinvite_title));
            customfonttextview1.setText(b.getString(o.suggest_fbinvite_description));
        }
        imageview.setImageResource(h.icon_fb);
    }

    public void a(BaseAdapter baseadapter, View view, g g1)
    {
        GameDTO gamedto;
        TextView textview;
        TextView textview1;
        TextView textview2;
        TextView textview3;
        Resources resources;
        ViewSwitcher viewswitcher;
        GameType gametype;
        gamedto = (GameDTO)g1.c();
        textview = (TextView)view.findViewById(com.etermax.i.dashboard_item_round);
        textview1 = (TextView)view.findViewById(com.etermax.i.dashboard_item_text);
        textview2 = (TextView)view.findViewById(com.etermax.i.time_text_view);
        textview3 = (TextView)view.findViewById(com.etermax.i.level);
        resources = view.getResources();
        viewswitcher = (ViewSwitcher)view.findViewById(com.etermax.i.dashboard_item_scores_switcher);
        gametype = gamedto.getGameType();
        if (gametype != null && gametype != GameType.NORMAL) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        String s2;
        super.a(baseadapter, view, g1);
        viewswitcher.setDisplayedChild(0);
        if (view instanceof com.etermax.preguntados.ui.dashboard.widget.f)
        {
            e.a((com.etermax.preguntados.ui.dashboard.widget.f)view);
        }
        s = "";
        int j = o.time_ago;
        Object aobj[] = new Object[1];
        aobj[0] = a(resources, gamedto.getCreated());
        s1 = resources.getString(j, aobj);
        s2 = b(resources, gamedto.getExpiration_date());
        if (gamedto.isRandomOpponent()) goto _L4; else goto _L3
_L3:
        UserLevelDataDTO userleveldatadto = ((PregUserDTO)gamedto.getOpponent()).getLevelData();
        if (userleveldatadto == null) goto _L4; else goto _L5
_L5:
        String s3;
        String s4;
        if (userleveldatadto.getLevel() > 999)
        {
            s3 = "+99";
        } else
        {
            s3 = String.valueOf(userleveldatadto.getLevel());
        }
_L20:
        if (TextUtils.isEmpty(s3))
        {
            textview3.setVisibility(8);
        } else
        {
            textview3.setText(s3);
            textview3.setVisibility(0);
        }
        g1.d();
        JVM INSTR tableswitch 0 3: default 272
    //                   0 482
    //                   1 589
    //                   2 649
    //                   3 718;
           goto _L6 _L7 _L8 _L9 _L10
_L6:
        s4 = s1;
_L12:
        int i1 = o.round;
        Object aobj2[] = new Object[1];
        aobj2[0] = Integer.valueOf(((GameDTO)g1.c()).getRound_number());
        String s5 = resources.getString(i1, aobj2);
        StringBuilder stringbuilder;
        int l;
        Object aobj1[];
        int j1;
        String s6;
        int k1;
        String s7;
        String s8;
        String s10;
        if (((GameDTO)g1.c()).getMyPlayerInfo().getCrowns() == null)
        {
            j1 = 0;
        } else
        {
            j1 = ((GameDTO)g1.c()).getMyPlayerInfo().getCrowns().size();
        }
        s6 = String.valueOf(j1);
        if (((GameDTO)g1.c()).getOpponentPlayerInfo().getCrowns() == null)
        {
            k1 = 0;
        } else
        {
            k1 = ((GameDTO)g1.c()).getOpponentPlayerInfo().getCrowns().size();
        }
        s7 = String.valueOf(k1);
        textview1.setText(s);
        ((TextView)view.findViewById(com.etermax.i.dashboard_item_your_score)).setText(s6);
        ((TextView)view.findViewById(com.etermax.i.dashboard_item_rival_score)).setText(s7);
        if (((GameDTO)g1.c()).getRound_number() <= 1 || ((GameDTO)g1.c()).getSectionType() == 3)
        {
            textview2.setText(s4);
            textview2.setVisibility(0);
            textview.setVisibility(8);
            return;
        } else
        {
            textview.setText(s5);
            textview.setVisibility(0);
            textview2.setVisibility(8);
            return;
        }
_L7:
        if (gamedto.isPendingMyApproval())
        {
            s10 = resources.getString(o.pending_approval_you);
            textview1.setTextColor(resources.getColor(f.dashboard_status_title));
        } else
        {
            s10 = resources.getString(o.your_time_left, new Object[] {
                s2
            });
            textview1.setTextColor(resources.getColor(f.grayLight));
        }
        s4 = (new StringBuilder()).append(resources.getString(o.created)).append(" ").append(s1).toString();
        s = s10;
          goto _L11
_L8:
        textview1.setTextColor(resources.getColor(f.dashboard_status_title));
        s = resources.getString(o.pending_approval);
        s4 = (new StringBuilder()).append(resources.getString(o.created)).append(" ").append(s1).toString();
          goto _L11
_L9:
        textview1.setTextColor(resources.getColor(f.grayLight));
        s = resources.getString(o.opponent_time_left, new Object[] {
            s2
        });
        s4 = (new StringBuilder()).append(resources.getString(o.created)).append(" ").append(s1).toString();
          goto _L11
_L10:
        textview1.setTextColor(resources.getColor(f.grayLight));
        if (gamedto.isWin())
        {
            s8 = a(((com.etermax.gamescommon.dashboard.a.c.f) (gamedto)), view.getContext());
            class _cls5
            {

                static final int a[];

                static 
                {
                    a = new int[DuelGamePlayerStatus.values().length];
                    try
                    {
                        a[DuelGamePlayerStatus.ENDED.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        a[DuelGamePlayerStatus.REJECTED.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[DuelGamePlayerStatus.EXPIRED.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[DuelGamePlayerStatus.PENDING.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3)
                    {
                        return;
                    }
                }
            }

            String s9;
            com.etermax.preguntados.ui.game.duelmode.h h1;
            TextView textview4;
            ViewSwitcher viewswitcher1;
            String s11;
            DuelGamePlayerStatus duelgameplayerstatus;
            int l1;
            int i2;
            DuelGamePlayerStatus duelgameplayerstatus1;
            String s12;
            String s13;
            String s14;
            String s15;
            int j2;
            Object aobj3[];
            int k2;
            int l2;
            Object aobj4[];
            int i3;
            Object aobj5[];
            com.etermax.preguntados.ui.dashboard.widget.f f1;
            Date date;
            Date date1;
            long l3;
            DuelPlayerDTO duelplayerdto;
            if (gamedto.getEnded_reason() == EndedReason.NORMAL || gamedto.getEnded_reason() == EndedReason.FINAL_DUEL)
            {
                s9 = resources.getString(o.you_won);
            } else
            if (gamedto.getEnded_reason() == EndedReason.RESIGNED)
            {
                s9 = resources.getString(o.resigned_opponent, new Object[] {
                    s8
                });
            } else
            if (gamedto.getEnded_reason() == EndedReason.REJECTED)
            {
                s9 = resources.getString(o.rejected_opponent, new Object[] {
                    s8
                });
            } else
            if (gamedto.getEnded_reason() == EndedReason.EXPIRED && gamedto.getRound_number() > 1)
            {
                s9 = resources.getString(o.notification_user_no_time, new Object[] {
                    s8
                });
            } else
            {
                s9 = s;
            }
            s = s9;
        } else
        if (gamedto.getEnded_reason() == EndedReason.NORMAL || gamedto.getEnded_reason() == EndedReason.FINAL_DUEL)
        {
            s = resources.getString(o.you_lost);
        } else
        if (gamedto.getEnded_reason() == EndedReason.RESIGNED)
        {
            s = resources.getString(o.resigned_you);
        } else
        if (gamedto.getEnded_reason() == EndedReason.REJECTED)
        {
            s = resources.getString(o.rejected_you);
        } else
        if (gamedto.getEnded_reason() == EndedReason.EXPIRED && gamedto.getRound_number() > 1)
        {
            s = resources.getString(o.notification_you_no_time);
        }
        if (gamedto.getEnded_reason() == EndedReason.EXPIRED && gamedto.getRound_number() == 1)
        {
            s = resources.getString(o.the_game_has_expired);
        }
        stringbuilder = (new StringBuilder()).append(resources.getString(o.finished)).append(" ");
        l = o.time_ago;
        aobj1 = new Object[1];
        aobj1[0] = a(resources, gamedto.getEnded_date());
        s4 = stringbuilder.append(resources.getString(l, aobj1)).toString();
_L11:
        if (true) goto _L12; else goto _L2
_L2:
        h1 = com.etermax.preguntados.ui.game.duelmode.h.a(com.etermax.preguntados.ui.game.duelmode.g.a);
        textview3.setVisibility(8);
        textview4 = (TextView)view.findViewById(com.etermax.i.dashboard_item_duel_countdown);
        ((ImageView)view.findViewById(com.etermax.i.dashboard_item_scores_image)).setImageResource(h1.b());
        viewswitcher.setDisplayedChild(1);
        viewswitcher1 = (ViewSwitcher)view.findViewById(com.etermax.i.tile_left_view);
        ((ImageView)viewswitcher1.findViewById(com.etermax.i.tile_image_icon)).setImageResource(h1.b(b, gamedto.getId()));
        viewswitcher1.setDisplayedChild(0);
        if (gamedto.isRandomGame())
        {
            s11 = resources.getString(o.random_challenge);
        } else
        {
            s11 = gamedto.getName();
        }
        ((TextView)view.findViewById(com.etermax.i.opponent_text_view)).setText(s11);
        ((ImageView)view.findViewById(com.etermax.i.dashboard_item_flag_image)).setImageResource(a(gamedto.getLanguageCode()));
        duelgameplayerstatus = DuelGamePlayerStatus.PENDING;
        l1 = gamedto.getDuelPosition();
        i2 = 0;
_L15:
        if (i2 >= gamedto.getDuelPlayers().size())
        {
            break MISSING_BLOCK_LABEL_2079;
        }
        duelplayerdto = (DuelPlayerDTO)gamedto.getDuelPlayers().get(i2);
        if (!duelplayerdto.getId().equals(Long.valueOf(d.e()))) goto _L14; else goto _L13
_L13:
        duelgameplayerstatus1 = duelplayerdto.getStatus();
_L18:
        s12 = gamedto.getDuelCreator().getName();
        if (view instanceof com.etermax.preguntados.ui.dashboard.widget.f)
        {
            f1 = (com.etermax.preguntados.ui.dashboard.widget.f)view;
            date = com.etermax.tools.j.h.a(b);
            date1 = gamedto.getExpiration_date();
            l3 = date1.getTime() - date.getTime();
            if (gamedto.isEnded() || l3 < 0L)
            {
                e.a(f1);
                f1.a();
            } else
            {
                f1.a(l3);
                e.a(f1, date1);
            }
        }
        s13 = (new StringBuilder()).append(resources.getString(o.created_by)).append(" ").append(s12).toString();
        if (gamedto.isMyTurn())
        {
            s14 = resources.getString(o.pending_approval_you);
            if (gamedto.isRandomGame())
            {
                s15 = (new StringBuilder()).append(resources.getString(o.challenger_plural)).append(" ").append(gamedto.getFinisherCount()).append("/").append(gamedto.getDuelPlayers().size()).toString();
            } else
            {
                s15 = (new StringBuilder()).append(resources.getString(o.created_by)).append(" ").append(s12).toString();
            }
        } else
        {
label0:
            {
                if (gamedto.isEnded())
                {
                    break label0;
                }
                i3 = o.challenge_place;
                aobj5 = new Object[1];
                aobj5[0] = Integer.valueOf(l1);
                s14 = resources.getString(i3, aobj5);
                if (gamedto.isRandomGame())
                {
                    s15 = (new StringBuilder()).append(resources.getString(o.challenger_plural)).append(" ").append(gamedto.getFinisherCount()).append("/").append(gamedto.getDuelPlayers().size()).toString();
                } else
                {
                    s15 = s13;
                }
            }
        }
_L17:
        textview.setText(s14);
        textview1.setText(s15);
        textview1.setTextColor(resources.getColor(f.grayLight));
        textview.setVisibility(0);
        textview1.setVisibility(0);
        textview2.setVisibility(8);
        return;
_L14:
        i2++;
          goto _L15
        textview4.setText(resources.getString(o.finished));
        switch (com.etermax.preguntados.ui.dashboard._cls5.a[duelgameplayerstatus1.ordinal()])
        {
        default:
            s14 = resources.getString(o.finished);
            s15 = s13;
            break;

        case 1: // '\001'
            if (gamedto.isRandomGame())
            {
                j2 = o.challenge_place;
                aobj3 = new Object[1];
                aobj3[0] = Integer.valueOf(l1);
                s14 = resources.getString(j2, aobj3);
                k2 = m.amount_player;
                l2 = gamedto.getDuelPlayers().size();
                aobj4 = new Object[1];
                aobj4[0] = Integer.valueOf(gamedto.getDuelPlayers().size());
                s15 = resources.getQuantityString(k2, l2, aobj4);
            } else
            if (gamedto.isWin())
            {
                s14 = resources.getString(o.you_won);
                s15 = s13;
            } else
            {
                s14 = resources.getString(o.you_lost);
                s15 = s13;
            }
            break;

        case 2: // '\002'
            s14 = resources.getString(o.rejected_you);
            s15 = s13;
            break;

        case 3: // '\003'
            s14 = resources.getString(o.challenged_timeout);
            s15 = s13;
            break;
        }
        if (true) goto _L17; else goto _L16
_L16:
        duelgameplayerstatus1 = duelgameplayerstatus;
          goto _L18
_L4:
        s3 = null;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public boolean a()
    {
        return true;
    }

    public void b(View view)
    {
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final i a;

            public void onClick(View view1)
            {
                com.etermax.preguntados.ui.dashboard.i.b(a).h();
            }

            
            {
                a = i.this;
                super();
            }
        });
        view.findViewById(com.etermax.i.dashboard_promo_close_button).setOnClickListener(new android.view.View.OnClickListener() {

            final i a;

            public void onClick(View view1)
            {
                com.etermax.preguntados.ui.dashboard.i.c(a).j();
            }

            
            {
                a = i.this;
                super();
            }
        });
    }

    public boolean b()
    {
        return true;
    }

    public void c(View view)
    {
        if (view instanceof com.etermax.preguntados.ui.dashboard.widget.a)
        {
            ((com.etermax.preguntados.ui.dashboard.widget.a)view).b();
        }
    }

    public boolean c()
    {
        return true;
    }

    public boolean d()
    {
        return f.z();
    }

    public View e(Context context)
    {
        return a.a(context);
    }

    public View f(Context context)
    {
        return f.C();
    }

    public View h(Context context)
    {
        return DashboardItemView_.a(context);
    }

    public void h()
    {
        e.a();
    }
}
