// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import java.util.regex.Pattern;

class FileUtils
{

    private static final Pattern a = Pattern.compile("[\\w%+,./=_-]+");

    static native int setPermissions(String s, int i, int j, int k);

}
