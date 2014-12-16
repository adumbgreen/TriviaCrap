.class public Lcom/smartadserver/android/library/controller/mraid/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/f;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field public b:Landroid/media/MediaPlayer$OnCompletionListener;

.field public c:Landroid/media/MediaPlayer$OnErrorListener;

.field public d:Landroid/media/MediaPlayer$OnPreparedListener;

.field final e:Ljava/lang/Runnable;

.field f:Landroid/view/View$OnClickListener;

.field g:Landroid/view/View$OnClickListener;

.field private h:Lcom/smartadserver/android/library/ui/SASAdView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[I

.field private p:Z

.field private q:Lcom/smartadserver/android/library/ui/SASVideoView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ProgressBar;

.field private u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

.field private v:Z

.field private w:Landroid/os/Handler;

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "mraidvideo"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->v:Z

    .line 65
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->x:Z

    .line 277
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/mraid/f$2;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 295
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f$3;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/mraid/f$3;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->c:Landroid/media/MediaPlayer$OnErrorListener;

    .line 307
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f$4;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/mraid/f$4;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->d:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 314
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f$5;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/mraid/f$5;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->e:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f$6;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/mraid/f$6;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->f:Landroid/view/View$OnClickListener;

    .line 342
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f$7;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/mraid/f$7;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->g:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->i:Landroid/widget/RelativeLayout;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->y:I

    return p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->m()Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/f;Lcom/smartadserver/android/library/ui/SASVideoView;)Lcom/smartadserver/android/library/ui/SASVideoView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    return-object p1
.end method

.method private a(F)V
    .locals 3
    .parameter

    .prologue
    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v2, "sas_mediaVolumeChanged"

    invoke-virtual {v1, v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 434
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/f;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/f;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/f;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v1, "sas_mediaError"

    invoke-virtual {v0, p1, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->r:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/g/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->start()V

    .line 449
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    if-eqz p1, :cond_2

    .line 452
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->t:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 457
    :goto_0
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->p:Z

    if-nez v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->g()V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->p:Z

    .line 461
    :cond_1
    return-void

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->t:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/controller/mraid/f;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->x:Z

    return p1
.end method

.method private c(I)I
    .locals 1
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smartadserver/android/library/h/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/f;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->t:Landroid/widget/ProgressBar;

    .line 260
    return-void
.end method

.method static synthetic d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->k()V

    .line 266
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/smartadserver/android/library/controller/mraid/f;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/f;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->r:Landroid/widget/ImageView;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/f;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartadserver/android/library/ui/SASVideoView;->b(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->s:Landroid/widget/ImageView;

    .line 275
    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/smartadserver/android/library/controller/mraid/f;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    return v0
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/f;->c(I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    .line 359
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/f;->c(I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    .line 362
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v3

    .line 363
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v4

    sub-int v4, v0, v4

    .line 365
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    int-to-float v0, v0

    iget v5, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    int-to-float v5, v5

    div-float v5, v0, v5

    .line 366
    int-to-float v0, v3

    int-to-float v6, v4

    div-float/2addr v0, v6

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    move v0, v1

    .line 369
    :goto_0
    iget-object v6, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    aget v6, v6, v8

    if-eq v6, v7, :cond_3

    .line 372
    iget-object v6, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    aget v6, v6, v8

    iput v6, p0, Lcom/smartadserver/android/library/controller/mraid/f;->j:I

    .line 374
    if-eqz v0, :cond_2

    .line 375
    iput v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    .line 376
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    .line 377
    iput v2, p0, Lcom/smartadserver/android/library/controller/mraid/f;->m:I

    .line 386
    :goto_1
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->j:I

    .line 387
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/smartadserver/android/library/h/c;->h(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_4

    .line 393
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 412
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 366
    goto :goto_0

    .line 380
    :cond_2
    iput v4, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    .line 381
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    .line 382
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->m:I

    goto :goto_1

    .line 395
    :pswitch_0
    iput v2, p0, Lcom/smartadserver/android/library/controller/mraid/f;->n:I

    goto :goto_3

    .line 399
    :pswitch_1
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->n:I

    goto :goto_3

    .line 403
    :pswitch_2
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    sub-int v0, v4, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->n:I

    goto :goto_3

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    aget v0, v0, v2

    if-eq v0, v7, :cond_0

    .line 409
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/f;->c(I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->n:I

    .line 410
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/f;->c(I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->m:I

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_2

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic g(Lcom/smartadserver/android/library/controller/mraid/f;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->m:I

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v1, "sas_mediaStarted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 416
    return-void
.end method

.method static synthetic h(Lcom/smartadserver/android/library/controller/mraid/f;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->n:I

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v1, "sas_mediaEnded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 420
    return-void
.end method

.method static synthetic i(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v1, "sas_mediaPlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 424
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v1, "sas_mediaPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 428
    return-void
.end method

.method static synthetic j(Lcom/smartadserver/android/library/controller/mraid/f;)[I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Z)V

    .line 442
    return-void
.end method

.method static synthetic k(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->e()V

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->r:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/g/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->j()V

    .line 468
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->pause()V

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->x:Z

    .line 470
    return-void
.end method

.method static synthetic l(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->c()V

    return-void
.end method

.method private m()Lcom/smartadserver/android/library/ui/SASVideoView;
    .locals 2

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->d()V

    .line 491
    :cond_0
    new-instance v0, Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    .line 492
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0, p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnVideoViewVisibilityChangedListener(Lcom/smartadserver/android/library/ui/f;)V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->v:Z

    .line 495
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->w:Landroid/os/Handler;

    .line 497
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    return-object v0
.end method

.method static synthetic m(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->d()V

    return-void
.end method

.method static synthetic n(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->h()V

    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->t:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic q(Lcom/smartadserver/android/library/controller/mraid/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic r(Lcom/smartadserver/android/library/controller/mraid/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->x:Z

    return v0
.end method

.method static synthetic s(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->l()V

    return-void
.end method

.method static synthetic u(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->i()V

    return-void
.end method

.method static synthetic v(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->s:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 473
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->f()V

    .line 475
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 476
    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 477
    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 478
    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->m:I

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/f;->n:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(IIII)V

    .line 481
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 519
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 520
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->v:Z

    .line 521
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->x:Z

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->v:Z

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->v:Z

    .line 524
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->q:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->y:I

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->seekTo(I)V

    .line 525
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->k()V

    goto :goto_0

    .line 528
    :cond_2
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->l()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->x:Z

    .line 502
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/f$8;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/f$8;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 515
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput p1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->z:I

    .line 534
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 148
    const-string v1, "SASMRAIDVideoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo: url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sasPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->o:[I

    .line 154
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/f;->f()V

    .line 156
    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    iget v4, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    move-object v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p5

    move v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    .line 160
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    const-string v1, "Invalid url!"

    invoke-direct {p0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v1, "SASMRAIDVideoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request create video view with params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .line 169
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v4, "videoConfig"

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/f;->u:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    const-string v4, "closeButtonPosition"

    iget v5, p0, Lcom/smartadserver/android/library/controller/mraid/f;->z:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v4, "isCloseButtonVisible"

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->m()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_1
    const/4 v1, 0x1

    .line 202
    :goto_2
    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v2, Lcom/smartadserver/android/library/controller/mraid/f$1;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/controller/mraid/f$1;-><init>(Lcom/smartadserver/android/library/controller/mraid/f;)V

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 187
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 197
    :catch_1
    move-exception v1

    .line 198
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/h/c;->b(Ljava/lang/String;)V

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public playVideoInNativePlayer(Ljava/lang/String;)V
    .locals 9
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 89
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v5, "video/mp4"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "audio"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 94
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 100
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 101
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 102
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v0, v7, v1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 106
    :cond_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    :goto_1
    return-void

    .line 111
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 112
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 114
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 115
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v7

    .line 116
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 118
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput v8, v6, v0

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput v8, v6, v0

    const/4 v0, 0x2

    aput v1, v6, v0

    const/4 v0, 0x3

    aput v7, v6, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v6, v0

    const-string v7, "fullscreen"

    const-string v8, "exit"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/smartadserver/android/library/controller/mraid/f;->playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_0
.end method
