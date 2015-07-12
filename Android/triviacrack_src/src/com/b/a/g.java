// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.InputStream;

// Referenced classes of package com.b.a:
//            d, au, ai, h, 
//            ae, aa, k, e, 
//            am, a

class g extends d
{

    private static final UriMatcher p;
    final Context o;

    g(Context context, aa aa, k k, e e, am am, a a1)
    {
        super(aa, k, e, am, a1);
        o = context;
    }

    private Bitmap a(InputStream inputstream, ai ai1)
    {
        android.graphics.BitmapFactory.Options options;
        InputStream inputstream1;
        if (inputstream == null)
        {
            return null;
        }
        options = c(ai1);
        if (!a(options))
        {
            break MISSING_BLOCK_LABEL_49;
        }
        inputstream1 = n();
        BitmapFactory.decodeStream(inputstream1, null, options);
        au.a(inputstream1);
        a(ai1.f, ai1.g, options);
        return BitmapFactory.decodeStream(inputstream, null, options);
        Exception exception;
        exception;
        au.a(inputstream1);
        throw exception;
    }

    private InputStream n()
    {
        ContentResolver contentresolver = o.getContentResolver();
        android.net.Uri uri = i().c;
        switch (p.match(uri))
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Invalid uri: ").append(uri).toString());

        case 1: // '\001'
            uri = android.provider.ContactsContract.Contacts.lookupContact(contentresolver, uri);
            if (uri == null)
            {
                return null;
            }
            // fall through

        case 3: // '\003'
            if (android.os.Build.VERSION.SDK_INT < 14)
            {
                return android.provider.ContactsContract.Contacts.openContactPhotoInputStream(contentresolver, uri);
            } else
            {
                return h.a(contentresolver, uri);
            }

        case 2: // '\002'
        case 4: // '\004'
            return contentresolver.openInputStream(uri);
        }
    }

    Bitmap a(ai ai1)
    {
        InputStream inputstream = null;
        Bitmap bitmap;
        inputstream = n();
        bitmap = a(inputstream, ai1);
        au.a(inputstream);
        return bitmap;
        Exception exception;
        exception;
        au.a(inputstream);
        throw exception;
    }

    ae a()
    {
        return ae.b;
    }

    static 
    {
        p = new UriMatcher(-1);
        p.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        p.addURI("com.android.contacts", "contacts/lookup/*", 1);
        p.addURI("com.android.contacts", "contacts/#/photo", 2);
        p.addURI("com.android.contacts", "contacts/#", 3);
        p.addURI("com.android.contacts", "display_photo/#", 4);
    }
}
