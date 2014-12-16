// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.h.a;
import java.util.List;

public class l extends LinearLayout
{

    protected TextView a;
    protected ImageView b;
    protected TextView c;
    protected TextView d;
    protected TextView e;
    protected ImageView f;
    protected ImageView g;

    public l(Context context)
    {
        super(context);
    }

    public void a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        a.setText(userfactorytranslationstatdto.getText());
        if (userfactorytranslationstatdto.getCountries().get(0) != null)
        {
            b.setImageResource(com.etermax.preguntados.h.a.a(((Country)userfactorytranslationstatdto.getCountries().get(0)).name()).c());
        } else
        {
            b.setImageResource(com.etermax.preguntados.h.a.d().c());
        }
        c.setText(LanguageResourceMapper.getByCode(userfactorytranslationstatdto.getLanguage()).getNameResource());
        e.setText(String.valueOf(userfactorytranslationstatdto.getLikes()));
        d.setText(String.valueOf(userfactorytranslationstatdto.getDislikes()));
    }
}
