// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import android.text.TextUtils;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import java.util.List;

public class GameRequestDTO
{

    private Language language;
    private String name;
    private UserDTO opponent;
    private List opponents;
    private GameType type;

    public GameRequestDTO(GameType gametype, Language language1)
    {
        type = gametype;
        language = language1;
    }

    public GameRequestDTO(GameType gametype, Language language1, j j1)
    {
        type = gametype;
        language = language1;
        opponent = new UserDTO();
        if (TextUtils.isEmpty(j1.getFacebookId()))
        {
            opponent.setId(j1.getId());
            return;
        } else
        {
            opponent.setFacebook_id(j1.getFacebookId());
            return;
        }
    }

    public GameRequestDTO(GameType gametype, Language language1, UserDTO userdto)
    {
        type = gametype;
        language = language1;
        opponent = userdto;
    }

    public GameRequestDTO(GameType gametype, Language language1, Long long1)
    {
        type = gametype;
        language = language1;
        opponent = new UserDTO(long1);
    }

    public GameRequestDTO(GameType gametype, String s, Language language1, List list)
    {
        type = gametype;
        name = s;
        language = language1;
        opponents = list;
    }

    public Language getLanguage()
    {
        return language;
    }
}
