// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.login.datasource.dto.UserDTO;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            UserLevelDataDTO

public class PregUserDTO extends UserDTO
{

    private UserLevelDataDTO level_data;

    public PregUserDTO()
    {
    }

    public UserLevelDataDTO getLevelData()
    {
        return level_data;
    }
}
