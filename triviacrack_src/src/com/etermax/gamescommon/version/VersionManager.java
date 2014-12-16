// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.version;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.login.ui.k;
import com.etermax.gamescommon.login.ui.u;

public class VersionManager
{

    e mPreferences;

    public VersionManager()
    {
    }

    private static void forceUpdate(FragmentActivity fragmentactivity)
    {
        k.a(fragmentactivity).b(fragmentactivity);
    }

    private void suggestUpdate(FragmentActivity fragmentactivity)
    {
        long l = mPreferences.a("suggest_time", 0L);
        long l1 = System.currentTimeMillis();
        if (l > 0L && l1 - l > 0x5265c00L || l == 0L)
        {
            u.a(fragmentactivity).b(fragmentactivity);
            mPreferences.b("suggest_time", l1);
        }
    }

    public boolean checkVersionUpdate(VersionStatusType versionstatustype, FragmentActivity fragmentactivity)
    {
        if (versionstatustype == null) goto _L2; else goto _L1
_L1:
        class _cls1
        {

            static final int $SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType[];

            static 
            {
                $SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType = new int[VersionStatusType.values().length];
                try
                {
                    $SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType[VersionStatusType.FORCE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType[VersionStatusType.SUGGEST.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.etermax.gamescommon.version.VersionManager.VersionStatusType[versionstatustype.ordinal()];
        JVM INSTR tableswitch 1 2: default 36
    //                   1 38
    //                   2 44;
           goto _L2 _L3 _L4
_L2:
        return true;
_L3:
        forceUpdate(fragmentactivity);
        return false;
_L4:
        suggestUpdate(fragmentactivity);
        return true;
    }

    private class VersionStatusType extends Enum
    {

        private static final VersionStatusType $VALUES[];
        public static final VersionStatusType FORCE;
        public static final VersionStatusType OK;
        public static final VersionStatusType SUGGEST;

        public static VersionStatusType valueOf(String s)
        {
            return (VersionStatusType)Enum.valueOf(com/etermax/gamescommon/version/VersionManager$VersionStatusType, s);
        }

        public static VersionStatusType[] values()
        {
            return (VersionStatusType[])$VALUES.clone();
        }

        static 
        {
            OK = new VersionStatusType("OK", 0);
            FORCE = new VersionStatusType("FORCE", 1);
            SUGGEST = new VersionStatusType("SUGGEST", 2);
            VersionStatusType aversionstatustype[] = new VersionStatusType[3];
            aversionstatustype[0] = OK;
            aversionstatustype[1] = FORCE;
            aversionstatustype[2] = SUGGEST;
            $VALUES = aversionstatustype;
        }

        private VersionStatusType(String s, int i)
        {
            super(s, i);
        }
    }

}
