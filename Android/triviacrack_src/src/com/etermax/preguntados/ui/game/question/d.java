// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import java.util.ArrayList;

public interface d
{

    public abstract void a(QuestionDTO questiondto, Integer integer, ArrayList arraylist, PowerUp powerup);

    public abstract void a(Integer integer, ArrayList arraylist);

    public abstract void a(ArrayList arraylist, long l, PowerUp powerup);

    public abstract void c();

    public abstract void d();
}
