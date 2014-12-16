// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            i, h

public class j
{

    private Bundle a;

    private j()
    {
        a = new Bundle();
    }

    j(i._cls1 _pcls1)
    {
        this();
    }

    public h a()
    {
        i k = new i();
        k.setArguments(a);
        return k;
    }

    public j a(int k)
    {
        a.putInt("mHeaderColor", k);
        return this;
    }

    public j a(long l)
    {
        a.putLong("mGameId", l);
        return this;
    }

    public j a(QuestionDTO questiondto)
    {
        a.putSerializable("mQuestion", questiondto);
        return this;
    }

    public j a(SpinType spintype)
    {
        a.putSerializable("mSpinType", spintype);
        return this;
    }

    public j a(String s)
    {
        a.putString("mTitle", s);
        return this;
    }

    public j a(ArrayList arraylist)
    {
        a.putSerializable("mUsedPowerUps", arraylist);
        return this;
    }

    public j b(String s)
    {
        a.putString("mUsername", s);
        return this;
    }

    public j c(String s)
    {
        a.putString("mFacebookId", s);
        return this;
    }
}
