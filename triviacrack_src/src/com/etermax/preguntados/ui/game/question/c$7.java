// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.datasource.dto.enums.SpinType;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            c

class QuestionType
{

    static final int a[];
    static final int b[];
    static final int c[];

    static 
    {
        c = new int[SpinType.values().length];
        try
        {
            c[SpinType.CROWN.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            c[SpinType.DUEL.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            c[SpinType.FINAL_DUEL.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            c[SpinType.NORMAL.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        b = new int[PowerUp.values().length];
        try
        {
            b[PowerUp.EXTRA_TIME.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            b[PowerUp.BOMB.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            b[PowerUp.DOUBLE_CHANCE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            b[PowerUp.SWAP_QUESTION.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        a = new int[QuestionType.values().length];
        try
        {
            a[QuestionType.IMAGE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            a[QuestionType.NORMAL.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            a[QuestionType.SOUND.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            a[QuestionType.VIDEO.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror11)
        {
            return;
        }
    }
}
