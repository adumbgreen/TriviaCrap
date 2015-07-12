// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.preguntados.datasource.dto.GameDTO;
import java.util.Comparator;
import java.util.Date;

// Referenced classes of package com.etermax.preguntados.datasource:
//            a

final class GameDTO
    implements Comparator
{

    public int a(GameDTO gamedto, GameDTO gamedto1)
    {
        if (!gamedto.isFirstTurn() || gamedto1.isFirstTurn())
        {
            if (!gamedto.isFirstTurn() && gamedto1.isFirstTurn())
            {
                return 1;
            }
            if (!gamedto.isSecondTurn() || gamedto1.isSecondTurn())
            {
                if (!gamedto.isSecondTurn() && gamedto1.isSecondTurn())
                {
                    return 1;
                }
                if (gamedto.getLast_turn() != null && gamedto1.getLast_turn() != null)
                {
                    return gamedto.getLast_turn().compareTo(gamedto1.getLast_turn());
                }
                if (gamedto.getLast_turn() == null && gamedto1.getLast_turn() != null)
                {
                    return gamedto.getCreated().compareTo(gamedto1.getLast_turn());
                }
                if (gamedto1.getLast_turn() == null && gamedto.getLast_turn() != null)
                {
                    return gamedto.getLast_turn().compareTo(gamedto1.getCreated());
                } else
                {
                    return gamedto.getCreated().compareTo(gamedto1.getCreated());
                }
            }
        }
        return -1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((GameDTO)obj, (GameDTO)obj1);
    }

    GameDTO()
    {
    }
}
