// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapters

final class val.typeAdapter
    implements TypeAdapterFactory
{

    final TypeToken val$type;
    final TypeAdapter val$typeAdapter;

    public TypeAdapter create(Gson gson, TypeToken typetoken)
    {
        if (typetoken.equals(val$type))
        {
            return val$typeAdapter;
        } else
        {
            return null;
        }
    }

    ()
    {
        val$type = typetoken;
        val$typeAdapter = typeadapter;
        super();
    }
}
