// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import android.text.TextUtils;
import com.etermax.preguntados.datasource.dto.enums.DuelGamePlayerStatus;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            PregUserDTO

public class DuelPlayerDTO extends PregUserDTO
{

    private int correct_answers;
    private long finish_time;
    private boolean me;
    private List rewards;
    private DuelGamePlayerStatus status;

    public DuelPlayerDTO()
    {
    }

    public int getCorrectAnswers()
    {
        return correct_answers;
    }

    public long getFinishTime()
    {
        return finish_time;
    }

    public String getName()
    {
        String s = getFacebook_name();
        if (TextUtils.isEmpty(s))
        {
            s = getVisibleUsername();
        }
        return s;
    }

    public List getRewards()
    {
        return rewards;
    }

    public DuelGamePlayerStatus getStatus()
    {
        return status;
    }

    public boolean isFbShowPicture()
    {
        return getFacebook_id() != null;
    }

    public boolean isMe()
    {
        return me;
    }
}
