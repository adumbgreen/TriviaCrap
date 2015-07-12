.class public Lcom/etermax/gamescommon/profile/image/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/datasource/e;

.field protected b:Lcom/etermax/tools/social/a/b;

.field protected c:Lcom/etermax/tools/b/a;

.field protected d:Lcom/etermax/gamescommon/login/datasource/c;

.field protected e:Lcom/etermax/gamescommon/login/datasource/a;

.field protected f:Lcom/etermax/tools/f/a;

.field private g:Landroid/app/AlertDialog;

.field private h:Ljava/io/File;

.field private i:Landroid/support/v4/app/Fragment;

.field private j:Lcom/etermax/gamescommon/profile/image/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/image/a;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/image/a;->d()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 369
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 371
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 372
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->j:Lcom/etermax/gamescommon/profile/image/c;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/profile/image/a;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->h:Ljava/io/File;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    .line 222
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/etermax/gamescommon/profile/image/a$4;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/profile/image/a$4;-><init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/profile/image/a$4;->a(Ljava/lang/Object;)Z

    .line 270
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Lcom/etermax/gamescommon/profile/image/a$5;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/profile/image/a;->b:Lcom/etermax/tools/social/a/b;

    iget-object v4, p0, Lcom/etermax/gamescommon/profile/image/a;->d:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v5, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v6, p0, Lcom/etermax/gamescommon/profile/image/a;->f:Lcom/etermax/tools/f/a;

    const-string v7, "profile"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/etermax/gamescommon/profile/image/a$5;-><init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/image/a$5;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/image/a;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lcom/etermax/gamescommon/profile/image/a$6;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/profile/image/a$6;-><init>(Lcom/etermax/gamescommon/profile/image/a;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/image/a$6;->a(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->j:Lcom/etermax/gamescommon/profile/image/c;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->j:Lcom/etermax/gamescommon/profile/image/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/profile/image/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const/16 v5, 0x2d0

    const/16 v4, 0xa0

    const/4 v3, 0x1

    .line 302
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Leu/janmuller/android/simplecropimage/CropImage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const-string v1, "image-path"

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/image/a;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const-string v1, "base64"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v1, "minOutputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v1, "minOutputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "maxOutputX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v1, "maxOutputY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    const/16 v2, 0x310

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 316
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 166
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 326
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/image/a;->h:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 328
    invoke-static {v0, v1}, Lcom/etermax/gamescommon/profile/image/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 330
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 331
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/image/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0

    .line 336
    :sswitch_1
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/image/a;->f()V

    goto :goto_0

    .line 339
    :sswitch_2
    const-string v0, "image-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lcom/etermax/gamescommon/profile/image/a$7;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/gamescommon/profile/image/a$7;-><init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/image/a$7;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    nop

    :sswitch_data_0
    .sparse-switch
        0x110 -> :sswitch_0
        0x210 -> :sswitch_1
        0x310 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/profile/image/c;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    .line 87
    iput-object p2, p0, Lcom/etermax/gamescommon/profile/image/a;->j:Lcom/etermax/gamescommon/profile/image/c;

    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp_photo.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->h:Ljava/io/File;

    .line 95
    :goto_0
    const-string v0, "android.intent.action.PICK"

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 103
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 105
    new-instance v0, Lcom/etermax/gamescommon/profile/image/b;

    sget-object v2, Lcom/etermax/gamescommon/profile/image/e;->a:Lcom/etermax/gamescommon/profile/image/e;

    invoke-virtual {v1, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/profile/image/b;-><init>(Lcom/etermax/gamescommon/profile/image/a;Lcom/etermax/gamescommon/profile/image/e;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp_photo.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->h:Ljava/io/File;

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 110
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const/high16 v0, 0x1

    invoke-virtual {v7, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 114
    new-instance v0, Lcom/etermax/gamescommon/profile/image/b;

    sget-object v2, Lcom/etermax/gamescommon/profile/image/e;->c:Lcom/etermax/gamescommon/profile/image/e;

    invoke-virtual {v1, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/profile/image/b;-><init>(Lcom/etermax/gamescommon/profile/image/a;Lcom/etermax/gamescommon/profile/image/e;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    :cond_3
    new-instance v0, Lcom/etermax/gamescommon/profile/image/b;

    sget-object v2, Lcom/etermax/gamescommon/profile/image/e;->b:Lcom/etermax/gamescommon/profile/image/e;

    sget v1, Lcom/etermax/o;->facebook:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/etermax/h;->icon_fb:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/profile/image/b;-><init>(Lcom/etermax/gamescommon/profile/image/a;Lcom/etermax/gamescommon/profile/image/e;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    new-instance v0, Lcom/etermax/gamescommon/profile/image/b;

    sget-object v2, Lcom/etermax/gamescommon/profile/image/e;->d:Lcom/etermax/gamescommon/profile/image/e;

    sget v1, Lcom/etermax/o;->delete_:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/etermax/h;->icon_close:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/profile/image/b;-><init>(Lcom/etermax/gamescommon/profile/image/a;Lcom/etermax/gamescommon/profile/image/e;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_5
    new-instance v0, Lcom/etermax/gamescommon/profile/image/d;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1090011

    const v4, 0x1020014

    move-object v1, p0

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/profile/image/d;-><init>(Lcom/etermax/gamescommon/profile/image/a;Landroid/content/Context;IILjava/util/List;)V

    .line 128
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v2, Lcom/etermax/gamescommon/profile/image/a$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/profile/image/a$1;-><init>(Lcom/etermax/gamescommon/profile/image/a;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    new-instance v2, Lcom/etermax/gamescommon/profile/image/a$2;

    invoke-direct {v2, p0, v8}, Lcom/etermax/gamescommon/profile/image/a$2;-><init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->g:Landroid/app/AlertDialog;

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    const/16 v2, 0x110

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->h:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 182
    :goto_0
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    const-string v0, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    const/16 v2, 0x210

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    :goto_1
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/profile/image/InternalStorageContentProvider;->a:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/etermax/gamescommon/profile/image/a$3;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/profile/image/a$3;-><init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/profile/image/a$3;->a(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method
