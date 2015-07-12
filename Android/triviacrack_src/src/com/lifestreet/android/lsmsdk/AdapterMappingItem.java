// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import java.util.Locale;
import java.util.Map;

public final class AdapterMappingItem
{

    private final Class mAdapterClass;
    private final Type mAdapterType;
    private final String mNetworkName;

    public AdapterMappingItem(String s, Type type, Class class1)
    {
        mNetworkName = s.toUpperCase(Locale.US);
        mAdapterType = type;
        mAdapterClass = class1;
    }

    public Class getAdapterClass()
    {
        return mAdapterClass;
    }

    public Type getAdapterType()
    {
        return mAdapterType;
    }

    public String getNetworkName()
    {
        return mNetworkName;
    }

    public void putToAppropriateMapping(Map map, Map map1)
    {
        class _cls1
        {

            static final int $SwitchMap$com$lifestreet$android$lsmsdk$AdapterMappingItem$Type[];

            static 
            {
                $SwitchMap$com$lifestreet$android$lsmsdk$AdapterMappingItem$Type = new int[Type.values().length];
                try
                {
                    $SwitchMap$com$lifestreet$android$lsmsdk$AdapterMappingItem$Type[Type.BANNER.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$lifestreet$android$lsmsdk$AdapterMappingItem$Type[Type.INTERSTITIAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$lifestreet$android$lsmsdk$AdapterMappingItem$Type[Type.BOTH.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.lifestreet.android.lsmsdk.AdapterMappingItem.Type[mAdapterType.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            map.put(mNetworkName, this);
            return;

        case 2: // '\002'
            map1.put(mNetworkName, this);
            return;

        case 3: // '\003'
            map.put(mNetworkName, this);
            break;
        }
        map1.put(mNetworkName, this);
    }

    public String toString()
    {
        return mAdapterClass.getName();
    }

    private class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type BANNER;
        public static final Type BOTH;
        public static final Type INTERSTITIAL;
        public static final Type UNKNOWN;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/lifestreet/android/lsmsdk/AdapterMappingItem$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new Type("UNKNOWN", 0);
            BANNER = new Type("BANNER", 1);
            INTERSTITIAL = new Type("INTERSTITIAL", 2);
            BOTH = new Type("BOTH", 3);
            Type atype[] = new Type[4];
            atype[0] = UNKNOWN;
            atype[1] = BANNER;
            atype[2] = INTERSTITIAL;
            atype[3] = BOTH;
            $VALUES = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }

}
