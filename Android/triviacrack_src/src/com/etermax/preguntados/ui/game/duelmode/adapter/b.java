// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.RewardDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.datasource.dto.enums.DuelGamePlayerStatus;
import com.etermax.preguntados.h.c;
import com.etermax.preguntados.ui.game.duelmode.h;
import com.etermax.tools.widget.a.e;
import com.etermax.tools.widget.a.g;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            DuelModeResultsHeaderView_, f, d, c, 
//            g

public class b
    implements e
{

    private Context a;
    private h b;

    public b(Context context, h h1)
    {
        a = context;
        b = h1;
    }

    public View a(Context context)
    {
        return DuelModeResultsHeaderView_.a(context);
    }

    public void a(View view, DuelPlayerDTO duelplayerdto, com.etermax.preguntados.ui.game.duelmode.adapter.g g1)
    {
        view.findViewById(i.item_image).setOnClickListener(new android.view.View.OnClickListener(g1, duelplayerdto) {

            final com.etermax.preguntados.ui.game.duelmode.adapter.g a;
            final DuelPlayerDTO b;
            final b c;

            public void onClick(View view1)
            {
                a.a(b.getId());
            }

            
            {
                c = b.this;
                a = g1;
                b = duelplayerdto;
                super();
            }
        });
    }

    public void a(View view, d d1, boolean flag, boolean flag1, DuelGamePlayerStatus duelgameplayerstatus, List list)
    {
label0:
        {
            {
                View view1 = view.findViewById(i.item_background);
                ImageView imageview = (ImageView)view.findViewById(i.item_image);
                TextView textview = (TextView)view.findViewById(i.item_result_textview);
                TextView textview1 = (TextView)view.findViewById(i.item_finish_in_textview);
                View view2 = view.findViewById(i.item_timer_container);
                ImageView imageview1 = (ImageView)view.findViewById(i.item_reward_image);
                TextView textview2 = (TextView)view.findViewById(i.item_timer_textview);
                view1.setBackgroundResource(b.c());
                if (flag)
                {
                    break label0;
                }
                view2.setVisibility(0);
                int l = b.f();
                textview1.setVisibility(0);
                textview.setVisibility(8);
                imageview1.setVisibility(8);
                class _cls4
                {

                    static final int a[];
                    static final int b[];

                    static 
                    {
                        b = new int[DuelGamePlayerStatus.values().length];
                        try
                        {
                            b[DuelGamePlayerStatus.ENDED.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            b[DuelGamePlayerStatus.EXPIRED.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            b[DuelGamePlayerStatus.PENDING.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            b[DuelGamePlayerStatus.REJECTED.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        a = new int[com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType.values().length];
                        try
                        {
                            a[com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType.COINS.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror4) { }
                        try
                        {
                            a[com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType.EXTRA_SHOTS.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror5) { }
                        try
                        {
                            a[com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType.LIVES.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror6) { }
                        try
                        {
                            a[com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType.LIVES_LIMIT.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror7)
                        {
                            return;
                        }
                    }
                }

                int j;
                Iterator iterator;
                RewardDTO rewarddto;
                if (view instanceof com.etermax.preguntados.ui.game.duelmode.adapter.f)
                {
                    d1.a((com.etermax.preguntados.ui.game.duelmode.adapter.f)view);
                    j = l;
                } else
                {
                    j = l;
                }
            }
            imageview.setImageResource(j);
            return;
        }
label1:
        {
label2:
            {
                view2.setVisibility(8);
                if (view instanceof com.etermax.preguntados.ui.game.duelmode.adapter.f)
                {
                    d1.b((com.etermax.preguntados.ui.game.duelmode.adapter.f)view);
                }
                textview1.setVisibility(8);
                textview.setVisibility(0);
                switch (_cls4.b[duelgameplayerstatus.ordinal()])
                {
                default:
                    textview.setText(a.getResources().getString(o.finished));
                    j = b.f();
                    continue; /* Loop/switch isn't completed */

                case 1: // '\001'
                    break;
                }
                if (!flag1)
                {
                    break label1;
                }
                if (list == null)
                {
                    break label2;
                }
                view2.setVisibility(0);
                iterator = list.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label2;
                    }
                    rewarddto = (RewardDTO)iterator.next();
                    switch (_cls4.a[rewarddto.getType().ordinal()])
                    {
                    case 1: // '\001'
                        imageview1.setImageResource(com.etermax.h.coins_challenge);
                        textview2.setText(String.valueOf(rewarddto.getQuantity()));
                        break;
                    }
                } while (true);
            }
            textview.setText(a.getResources().getString(o.you_won));
            j = b.d();
            continue; /* Loop/switch isn't completed */
        }
        textview.setText(a.getResources().getString(o.you_lost));
        if (DuelGamePlayerStatus.REJECTED.equals(duelgameplayerstatus))
        {
            j = b.f();
        } else
        {
            j = b.e();
        }
        if (true) goto _L2; else goto _L1
_L1:
        break MISSING_BLOCK_LABEL_449;
_L2:
        break MISSING_BLOCK_LABEL_148;
    }

    public void a(View view, com.etermax.preguntados.ui.game.duelmode.adapter.g g1)
    {
        Button button = (Button)view.findViewById(i.item_button);
        button.setText(o.play_again);
        button.setOnClickListener(new android.view.View.OnClickListener(g1) {

            final com.etermax.preguntados.ui.game.duelmode.adapter.g a;
            final b b;

            public void onClick(View view1)
            {
                a.f();
            }

            
            {
                b = b.this;
                a = g1;
                super();
            }
        });
    }

    public void a(View view, com.etermax.tools.widget.a.h h1)
    {
        TextView textview = (TextView)view.findViewById(i.section_text_view);
        TextView textview1 = (TextView)view.findViewById(i.players_count);
        switch (h1.b())
        {
        default:
            view.findViewById(i.section_container).setVisibility(8);
            return;

        case 0: // '\0'
            textview.setText(a.getResources().getString(o.result_plural));
            break;
        }
        textview1.setText(a.getResources().getString(o.answers_correct));
        int j = a.getResources().getColor(f.new_duel_list_section);
        view.findViewById(i.section_container).setBackgroundColor(j);
    }

    public void a(BaseAdapter baseadapter, View view, g g1)
    {
        if (!(g1 instanceof com.etermax.preguntados.ui.game.duelmode.adapter.c)) goto _L2; else goto _L1
_L1:
        TextView textview3;
        TextView textview4;
        DuelPlayerDTO duelplayerdto;
        Resources resources;
        com.etermax.gamescommon.dashboard.b b1 = new com.etermax.gamescommon.dashboard.b();
        TextView textview = (TextView)view.findViewById(i.item_number);
        ViewSwitcher viewswitcher = (ViewSwitcher)view.findViewById(i.item_image);
        TextView textview1 = (TextView)view.findViewById(i.item_name);
        TextView textview2 = (TextView)view.findViewById(i.item_name_small);
        textview3 = (TextView)view.findViewById(i.item_score);
        textview4 = (TextView)view.findViewById(i.item_time);
        TextView textview5 = (TextView)view.findViewById(i.level);
        duelplayerdto = (DuelPlayerDTO)g1.c();
        resources = a.getResources();
        UserLevelDataDTO userleveldatadto;
        String s;
        if (duelplayerdto.isMe())
        {
            view.setBackgroundColor(resources.getColor(f.rankings_tab_indicator));
            textview.setTextColor(resources.getColor(f.white));
            textview1.setTextColor(resources.getColor(f.white));
            textview2.setTextColor(resources.getColor(f.white));
            textview3.setTextColor(resources.getColor(f.white));
            textview4.setTextColor(resources.getColor(f.white));
        } else
        {
            view.setBackgroundColor(resources.getColor(f.white));
            textview.setTextColor(resources.getColor(f.gray));
            textview1.setTextColor(resources.getColor(f.grayDark));
            textview2.setTextColor(resources.getColor(f.gray));
            textview3.setTextColor(resources.getColor(f.duel_list_score));
            textview4.setTextColor(resources.getColor(f.grayLight));
        }
        textview.setText(String.valueOf(((com.etermax.preguntados.ui.game.duelmode.adapter.c)g1).a()));
        b1.a(viewswitcher, duelplayerdto);
        userleveldatadto = duelplayerdto.getLevelData();
        s = null;
        if (userleveldatadto != null)
        {
            if (duelplayerdto.getLevelData().getLevel() > 999)
            {
                s = "+99";
            } else
            {
                s = String.valueOf(duelplayerdto.getLevelData().getLevel());
            }
        }
        if (TextUtils.isEmpty(s))
        {
            textview5.setVisibility(8);
        } else
        {
            textview5.setText(s);
            textview5.setVisibility(0);
        }
        if (TextUtils.isEmpty(duelplayerdto.getFacebook_name()))
        {
            textview1.setText(duelplayerdto.getVisibleUsername());
            textview2.setVisibility(8);
        } else
        {
            textview1.setText(duelplayerdto.getFacebook_name());
            textview2.setText(duelplayerdto.getVisibleUsername());
            textview2.setVisibility(0);
        }
        _cls4.b[duelplayerdto.getStatus().ordinal()];
        JVM INSTR tableswitch 1 4: default 348
    //                   1 511
    //                   2 490
    //                   3 544
    //                   4 565;
           goto _L2 _L3 _L4 _L5 _L6
_L2:
        return;
_L4:
        textview3.setText(resources.getString(o.gamescore_expired));
        textview4.setVisibility(8);
        return;
_L3:
        textview3.setText(String.valueOf(duelplayerdto.getCorrectAnswers()));
        textview4.setText(com.etermax.preguntados.h.c.c(duelplayerdto.getFinishTime()));
        textview4.setVisibility(0);
        return;
_L5:
        textview3.setText(resources.getString(o.pending));
        textview4.setVisibility(8);
        return;
_L6:
        textview3.setText(resources.getString(o.gamescore_rejected));
        textview4.setVisibility(8);
        return;
    }

    public View b(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_item_button_continue_view, null);
    }

    public void b(View view, com.etermax.preguntados.ui.game.duelmode.adapter.g g1)
    {
        Button button = (Button)view.findViewById(i.item_button);
        button.setText(o.share);
        button.setOnClickListener(new android.view.View.OnClickListener(g1) {

            final com.etermax.preguntados.ui.game.duelmode.adapter.g a;
            final b b;

            public void onClick(View view1)
            {
                a.g();
            }

            
            {
                b = b.this;
                a = g1;
                super();
            }
        });
    }

    public View c(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_item_button_share_view, null);
    }

    public void d(View view)
    {
        view.findViewById(i.item_divider).setVisibility(0);
    }

    public void e(View view)
    {
        view.findViewById(i.item_divider).setVisibility(8);
    }

    public void f(View view)
    {
        view.findViewById(i.item_divider).setVisibility(8);
    }

    public View g(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_section_view, null);
    }

    public void g(View view)
    {
        view.findViewById(i.item_divider).setVisibility(0);
    }

    public View h(Context context)
    {
        return LayoutInflater.from(context).inflate(k.duel_mode_item_player_view, null);
    }
}
