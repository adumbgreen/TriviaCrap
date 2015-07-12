// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            f, c

public class g
{

    private Bundle a;

    private g()
    {
        a = new Bundle();
    }

    g(f._cls1 _pcls1)
    {
        this();
    }

    public c a()
    {
        f f1 = new f();
        f1.setArguments(a);
        return f1;
    }

    public g a(int i)
    {
        a.putInt("mQuestionsCount", i);
        return this;
    }

    public g a(long l)
    {
        a.putLong("mCountDownElapsedTime", l);
        return this;
    }

    public g a(QuestionDTO questiondto)
    {
        a.putSerializable("mQuestion", questiondto);
        return this;
    }

    public g a(GameType gametype)
    {
        a.putSerializable("mGameType", gametype);
        return this;
    }

    public g a(PowerUp powerup)
    {
        a.putSerializable("mPowerUpFree", powerup);
        return this;
    }

    public g a(SpinType spintype)
    {
        a.putSerializable("mSpinType", spintype);
        return this;
    }

    public g a(com.etermax.preguntados.ui.game.duelmode.g g1)
    {
        a.putSerializable("mDuelModeTheme", g1);
        return this;
    }

    public g a(String s)
    {
        a.putString("mTitle", s);
        return this;
    }

    public g a(ArrayList arraylist)
    {
        a.putSerializable("mUsedPowerUps", arraylist);
        return this;
    }

    public g b(int i)
    {
        a.putInt("mHeaderColor", i);
        return this;
    }

    public g b(long l)
    {
        a.putLong("mGameId", l);
        return this;
    }
}
