.class Lcom/b/a/w;
.super Lcom/b/a/i;
.source "SourceFile"


# static fields
.field private static final p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/w;->p:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/b/a/i;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 44
    return-void
.end method

.method static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 96
    .line 98
    :try_start_0
    sget-object v2, Lcom/b/a/w;->p:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    .line 107
    :cond_0
    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    :cond_2
    :goto_0
    return v0

    .line 102
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 107
    if-eqz v1, :cond_2

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 107
    :goto_1
    if-eqz v0, :cond_4

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 107
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 103
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method static a(II)Lcom/b/a/x;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/b/a/x;->a:Lcom/b/a/x;

    iget v0, v0, Lcom/b/a/x;->e:I

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/b/a/x;->a:Lcom/b/a/x;

    iget v0, v0, Lcom/b/a/x;->f:I

    if-gt p1, v0, :cond_0

    .line 88
    sget-object v0, Lcom/b/a/x;->a:Lcom/b/a/x;

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lcom/b/a/x;->b:Lcom/b/a/x;

    iget v0, v0, Lcom/b/a/x;->e:I

    if-gt p0, v0, :cond_1

    sget-object v0, Lcom/b/a/x;->b:Lcom/b/a/x;

    iget v0, v0, Lcom/b/a/x;->f:I

    if-gt p1, v0, :cond_1

    .line 90
    sget-object v0, Lcom/b/a/x;->b:Lcom/b/a/x;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/b/a/x;->c:Lcom/b/a/x;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 47
    iget-object v0, p0, Lcom/b/a/w;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 48
    iget-object v0, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/b/a/w;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/w;->a(I)V

    .line 49
    iget-object v0, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    const-string v3, "video/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/ai;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    iget v3, p1, Lcom/b/a/ai;->f:I

    iget v4, p1, Lcom/b/a/ai;->g:I

    invoke-static {v3, v4}, Lcom/b/a/w;->a(II)Lcom/b/a/x;

    move-result-object v3

    .line 54
    if-nez v0, :cond_2

    sget-object v4, Lcom/b/a/x;->c:Lcom/b/a/x;

    if-ne v3, v4, :cond_2

    .line 55
    invoke-super {p0, p1}, Lcom/b/a/i;->a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    :cond_0
    :goto_1
    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_2
    iget-object v4, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 60
    invoke-static {p1}, Lcom/b/a/w;->c(Lcom/b/a/ai;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 61
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    iget v7, p1, Lcom/b/a/ai;->f:I

    iget v8, p1, Lcom/b/a/ai;->g:I

    iget v9, v3, Lcom/b/a/x;->e:I

    iget v10, v3, Lcom/b/a/x;->f:I

    invoke-static {v7, v8, v9, v10, v6}, Lcom/b/a/w;->a(IIIILandroid/graphics/BitmapFactory$Options;)V

    .line 68
    if-eqz v0, :cond_5

    .line 71
    sget-object v0, Lcom/b/a/x;->c:Lcom/b/a/x;

    if-ne v3, v0, :cond_4

    .line 72
    :goto_2
    invoke-static {v2, v4, v5, v1, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    :goto_3
    if-nez v0, :cond_0

    .line 83
    :cond_3
    invoke-super {p0, p1}, Lcom/b/a/i;->a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_4
    iget v1, v3, Lcom/b/a/x;->d:I

    goto :goto_2

    .line 74
    :cond_5
    iget v0, v3, Lcom/b/a/x;->d:I

    .line 75
    invoke-static {v2, v4, v5, v0, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method
