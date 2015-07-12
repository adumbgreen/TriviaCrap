// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import java.util.ArrayList;

public interface l
{

    public abstract void a(GameDTO gamedto);

    public abstract void a(QuestionDTO questiondto);

    public abstract void a(QuestionDTO questiondto, Integer integer, Vote vote, ArrayList arraylist);
}
