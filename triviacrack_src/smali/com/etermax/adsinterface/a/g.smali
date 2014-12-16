.class Lcom/etermax/adsinterface/a/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/adsinterface/a/f;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/etermax/adsinterface/a/h;


# direct methods
.method public constructor <init>(Lcom/etermax/adsinterface/a/f;Lcom/etermax/adsinterface/a/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/etermax/adsinterface/a/g;->c:Lcom/etermax/adsinterface/a/h;

    .line 143
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 210
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v0, p1}, Lcom/etermax/adsinterface/a/f;->a(Lcom/etermax/adsinterface/a/f;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    :try_start_1
    new-instance v0, Lcom/etermax/tools/d/f;

    invoke-direct {v0, v1}, Lcom/etermax/tools/d/f;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 219
    :cond_0
    if-eqz v1, :cond_1

    .line 220
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    :cond_1
    :goto_0
    return-object v2

    .line 218
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 219
    :goto_1
    if-eqz v1, :cond_2

    .line 220
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    :cond_2
    :goto_2
    throw v0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 218
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v3}, Lcom/etermax/adsinterface/a/f;->b(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/adsinterface/a/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v2}, Lcom/etermax/adsinterface/a/f;->c(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/tools/d/g;

    move-result-object v2

    if-nez v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v2}, Lcom/etermax/adsinterface/a/f;->d(Lcom/etermax/adsinterface/a/f;)V

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v2}, Lcom/etermax/adsinterface/a/f;->b(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/adsinterface/a/a;->b()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v2}, Lcom/etermax/adsinterface/a/f;->b(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/adsinterface/a/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 166
    iget-object v4, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v4}, Lcom/etermax/adsinterface/a/f;->c(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/tools/d/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/etermax/tools/d/g;->b(Ljava/lang/String;)V

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v2}, Lcom/etermax/adsinterface/a/f;->c(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/tools/d/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/etermax/tools/d/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/etermax/adsinterface/a/g;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 180
    :try_start_1
    invoke-direct {p0, p1}, Lcom/etermax/adsinterface/a/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/etermax/adsinterface/a/g;->b:Landroid/graphics/Bitmap;

    .line 181
    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 182
    if-eqz p2, :cond_2

    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/etermax/adsinterface/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 206
    :cond_2
    :goto_1
    return v0

    .line 173
    :catch_0
    move-exception v2

    .line 174
    const-string v4, "IMAGE_CACHE"

    const-string v5, "OUT OF MEMORY WHILE TRYING TO GET BITMAP FROM DISK"

    invoke-static {v4, v5, v2}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    :catch_1
    move-exception v1

    .line 189
    if-eqz p2, :cond_2

    .line 190
    invoke-direct {p0, p2, v7}, Lcom/etermax/adsinterface/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/f;->c(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/tools/d/g;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 199
    :try_start_2
    iget-object v0, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/f;->c(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/tools/d/g;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/adsinterface/a/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v2}, Lcom/etermax/tools/d/g;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v0, p0, Lcom/etermax/adsinterface/a/g;->a:Lcom/etermax/adsinterface/a/f;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/f;->c(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/tools/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/tools/d/g;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    move v0, v1

    .line 206
    goto :goto_1

    .line 201
    :catch_2
    move-exception v0

    goto :goto_2

    .line 170
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 149
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/etermax/adsinterface/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/etermax/adsinterface/a/g;->c:Lcom/etermax/adsinterface/a/h;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/g;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/h;->contentLoadCompleted(Landroid/graphics/Bitmap;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/etermax/adsinterface/a/g;->c:Lcom/etermax/adsinterface/a/h;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Could not load image"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/h;->contentLoadFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/etermax/adsinterface/a/g;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/etermax/adsinterface/a/g;->a(Ljava/lang/Boolean;)V

    return-void
.end method
