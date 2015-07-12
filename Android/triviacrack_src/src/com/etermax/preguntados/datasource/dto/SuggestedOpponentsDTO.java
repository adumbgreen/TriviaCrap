// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            SuggestedOpponentDTO

public class SuggestedOpponentsDTO
    implements Serializable
{

    private SuggestedOpponentDTO favorites;
    private SuggestedOpponentDTO recent_opponents;
    private SuggestedOpponentDTO suggested_opponents;

    public SuggestedOpponentsDTO()
    {
    }

    public SuggestedOpponentDTO getFavorites()
    {
        return favorites;
    }

    public SuggestedOpponentDTO getRecent_opponents()
    {
        return recent_opponents;
    }

    public SuggestedOpponentDTO getSuggested_opponents()
    {
        return suggested_opponents;
    }
}
