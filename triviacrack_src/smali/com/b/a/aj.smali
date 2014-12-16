.class public final Lcom/b/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/ar;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/Bitmap$Config;


# direct methods
.method constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/b/a/aj;->a:Landroid/net/Uri;

    .line 199
    iput p2, p0, Lcom/b/a/aj;->b:I

    .line 200
    return-void
.end method


# virtual methods
.method public a(II)Lcom/b/a/aj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    if-gtz p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    if-gtz p2, :cond_1

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    iput p1, p0, Lcom/b/a/aj;->c:I

    .line 264
    iput p2, p0, Lcom/b/a/aj;->d:I

    .line 265
    return-object p0
.end method

.method public a(Lcom/b/a/ar;)Lcom/b/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/b/a/aj;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/aj;->k:Ljava/util/List;

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/b/a/aj;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-object p0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/b/a/aj;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/aj;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/b/a/aj;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/b/a/ai;
    .locals 14

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/b/a/aj;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/aj;->e:Z

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop and center inside can not be used together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/aj;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/b/a/aj;->c:I

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    iget-boolean v0, p0, Lcom/b/a/aj;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/b/a/aj;->c:I

    if-nez v0, :cond_2

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_2
    new-instance v0, Lcom/b/a/ai;

    iget-object v1, p0, Lcom/b/a/aj;->a:Landroid/net/Uri;

    iget v2, p0, Lcom/b/a/aj;->b:I

    iget-object v3, p0, Lcom/b/a/aj;->k:Ljava/util/List;

    iget v4, p0, Lcom/b/a/aj;->c:I

    iget v5, p0, Lcom/b/a/aj;->d:I

    iget-boolean v6, p0, Lcom/b/a/aj;->e:Z

    iget-boolean v7, p0, Lcom/b/a/aj;->f:Z

    iget v8, p0, Lcom/b/a/aj;->g:F

    iget v9, p0, Lcom/b/a/aj;->h:F

    iget v10, p0, Lcom/b/a/aj;->i:F

    iget-boolean v11, p0, Lcom/b/a/aj;->j:Z

    iget-object v12, p0, Lcom/b/a/aj;->l:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/b/a/ai;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;Lcom/b/a/ai$1;)V

    return-object v0
.end method
