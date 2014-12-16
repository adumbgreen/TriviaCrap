.class public Lcom/etermax/tools/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/File;

.field public d:Landroid/graphics/Bitmap$CompressFormat;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/16 v0, 0x1400

    iput v0, p0, Lcom/etermax/tools/d/h;->a:I

    .line 388
    const/high16 v0, 0xa0

    iput v0, p0, Lcom/etermax/tools/d/h;->b:I

    .line 390
    invoke-static {}, Lcom/etermax/tools/d/g;->d()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/d/h;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 391
    const/16 v0, 0x46

    iput v0, p0, Lcom/etermax/tools/d/h;->e:I

    .line 392
    iput-boolean v2, p0, Lcom/etermax/tools/d/h;->f:Z

    .line 393
    iput-boolean v2, p0, Lcom/etermax/tools/d/h;->g:Z

    .line 394
    iput-boolean v1, p0, Lcom/etermax/tools/d/h;->h:Z

    .line 395
    iput-boolean v1, p0, Lcom/etermax/tools/d/h;->i:Z

    .line 398
    invoke-static {p1, p2}, Lcom/etermax/tools/d/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/d/h;->c:Ljava/io/File;

    .line 399
    return-void
.end method
