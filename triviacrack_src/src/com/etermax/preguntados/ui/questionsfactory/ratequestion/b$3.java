// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import com.etermax.preguntados.datasource.dto.enums.QuestionType;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            b

class 
{

    static final int a[];

    static 
    {
        a = new int[QuestionType.values().length];
        try
        {
            a[QuestionType.IMAGE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[QuestionType.NORMAL.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[QuestionType.SOUND.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[QuestionType.VIDEO.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
