// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.ui.game.duelmode.g;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            m, k

public class n
{

    private Bundle a;

    private n()
    {
        a = new Bundle();
    }

    n(m._cls1 _pcls1)
    {
        this();
    }

    public k a()
    {
        m m1 = new m();
        m1.setArguments(a);
        return m1;
    }

    public n a(int i)
    {
        a.putInt("mHeaderColor", i);
        return this;
    }

    public n a(QuestionDTO questiondto)
    {
        a.putSerializable("mQuestion", questiondto);
        return this;
    }

    public n a(GameType gametype)
    {
        a.putSerializable("mGameType", gametype);
        return this;
    }

    public n a(PowerUp powerup)
    {
        a.putSerializable("mPowerUpFree", powerup);
        return this;
    }

    public n a(g g)
    {
        a.putSerializable("mDuelModeTheme", g);
        return this;
    }

    public n a(Integer integer)
    {
        a.putSerializable("mSelectedAnswer", integer);
        return this;
    }

    public n a(String s)
    {
        a.putString("mTitle", s);
        return this;
    }

    public n a(ArrayList arraylist)
    {
        a.putSerializable("mUsedPowerUps", arraylist);
        return this;
    }

    public n b(int i)
    {
        a.putInt("mQuestionsCount", i);
        return this;
    }
}
