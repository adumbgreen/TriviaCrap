// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.enums.DuelGamePlayerStatus;
import com.etermax.tools.widget.a.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            e, d, g, b

public class a extends com.etermax.tools.widget.a.a
    implements e
{

    private GameDTO a;
    private d b;
    private com.etermax.preguntados.ui.game.duelmode.adapter.g f;

    public a(Context context, List list, b b1, com.etermax.preguntados.ui.game.duelmode.adapter.g g1, GameDTO gamedto, boolean flag)
    {
        super(context, list, b1);
        f = g1;
        a = gamedto;
        b = new d(context, a.getExpiration_date());
        b.a(this);
        c.add(0, Integer.valueOf(2));
        if (a.isEnded() && flag)
        {
            c.add(Integer.valueOf(3));
        }
    }

    public void a()
    {
        b.a();
    }

    protected boolean a(int i)
    {
        return super.a(i) || getItemViewType(i + 1) != 1;
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public void b()
    {
        f.e();
    }

    public int getItemViewType(int i)
    {
        Object obj = getItem(i);
        if (obj.equals(Integer.valueOf(2)))
        {
            return 2;
        }
        if (obj.equals(Integer.valueOf(3)))
        {
            return 3;
        }
        if (obj.equals(Integer.valueOf(4)))
        {
            return 4;
        } else
        {
            return super.getItemViewType(i);
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1;
        int j;
        view1 = super.getView(i, view, viewgroup);
        j = getItemViewType(i);
        if (view1 != null) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch 2 4: default 48
    //                   2 83
    //                   3 102
    //                   4 121;
           goto _L2 _L3 _L4 _L5
_L2:
        j;
        JVM INSTR tableswitch 1 4: default 80
    //                   1 140
    //                   2 185
    //                   3 338
    //                   4 357;
           goto _L6 _L7 _L8 _L9 _L10
_L6:
        return view1;
_L3:
        view1 = ((b)e).a(d);
        continue; /* Loop/switch isn't completed */
_L4:
        view1 = ((b)e).b(d);
        continue; /* Loop/switch isn't completed */
_L5:
        Object obj1;
        view1 = ((b)e).c(d);
        continue; /* Loop/switch isn't completed */
_L7:
        if ((obj1 = getItem(i)) instanceof g)
        {
            ((b)e).a(view1, (DuelPlayerDTO)((g)obj1).c(), f);
            return view1;
        }
          goto _L6
_L8:
        Object obj = new ArrayList();
        Iterator iterator = a.getDuelPlayers().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            DuelPlayerDTO duelplayerdto1 = (DuelPlayerDTO)iterator.next();
            if (!duelplayerdto1.isMe())
            {
                continue;
            }
            obj = duelplayerdto1.getRewards();
            break;
        } while (true);
        DuelGamePlayerStatus duelgameplayerstatus = DuelGamePlayerStatus.PENDING;
        Iterator iterator1 = a.getDuelPlayers().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            DuelPlayerDTO duelplayerdto = (DuelPlayerDTO)iterator1.next();
            if (!duelplayerdto.isMe())
            {
                continue;
            }
            duelgameplayerstatus = duelplayerdto.getStatus();
            break;
        } while (true);
        ((b)e).a(view1, b, a.isEnded(), a.isWin(), duelgameplayerstatus, ((List) (obj)));
        return view1;
_L9:
        ((b)e).a(view1, f);
        return view1;
_L10:
        ((b)e).b(view1, f);
        return view1;
        if (true) goto _L2; else goto _L11
_L11:
    }

    public int getViewTypeCount()
    {
        return 3 + super.getViewTypeCount();
    }

    public boolean isEnabled(int i)
    {
        return false;
    }
}
