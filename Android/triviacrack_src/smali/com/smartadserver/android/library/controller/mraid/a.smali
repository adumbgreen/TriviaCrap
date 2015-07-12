.class public Lcom/smartadserver/android/library/controller/mraid/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/smartadserver/android/library/ui/SASAdView;

.field private e:Lcom/smartadserver/android/library/controller/mraid/b;

.field private f:Lcom/smartadserver/android/library/controller/mraid/d;

.field private g:Lcom/smartadserver/android/library/controller/mraid/c;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:F

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    .line 31
    const-string v0, "http://ak-ns.sascdn.com/diff/templates/js/mobile/mraid/bridges/android-sdk-mraid-bridge-2.1.js"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->a:Ljava/lang/String;

    .line 34
    const-string v0, "mraidbridge"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:Z

    .line 56
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 57
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Z

    .line 60
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    .line 62
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    .line 67
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->a()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/c;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/c;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/b;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    return-object v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/d;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->f()V

    .line 114
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:I

    iput v1, v0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    .line 115
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    iput v1, v0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    .line 118
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 131
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 132
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    .line 135
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->q:I

    .line 137
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:I

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:I

    .line 143
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->q:I

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->getPlacementType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->j()V

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 560
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 562
    :try_start_0
    const-string v1, "x"

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 563
    const-string v1, "y"

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 564
    const-string v1, "width"

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 565
    const-string v1, "height"

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 566
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 568
    :goto_0
    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    const-string v0, ""

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/b;

    invoke-direct {v0}, Lcom/smartadserver/android/library/controller/mraid/b;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    .line 72
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/d;

    invoke-direct {v0}, Lcom/smartadserver/android/library/controller/mraid/d;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    .line 73
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/controller/mraid/c;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/c;

    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->e()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:Z

    .line 76
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 391
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    if-eq p1, v0, :cond_1

    .line 392
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChange(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iput p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    .line 396
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->e()V

    .line 397
    const-string v0, "resized"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$4;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$4;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 409
    :cond_0
    const-string v0, "loading"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireOrientationChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 413
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireSizeChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 260
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if (typeof mraid != \'undefined\') mraid.fireErrorEvent(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 262
    return-void

    .line 260
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    const-string v1, "resized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\") from thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:Z

    .line 352
    if-nez p2, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 356
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Z

    if-eq v0, p1, :cond_0

    .line 588
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iput-boolean p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Z

    .line 590
    const-string v0, "loading"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireViewableChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireViewableChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "expanded"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 102
    :cond_0
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "resized"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->a()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    const-string v0, "loading"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:Z

    if-eqz v0, :cond_0

    .line 366
    iput-boolean v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:Z

    .line 367
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireStateChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.fireStateChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v0, "default"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    goto :goto_0

    .line 375
    :cond_2
    const-string v0, "hidden"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    goto :goto_0

    .line 377
    :cond_3
    const-string v0, "resized"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    goto :goto_0
.end method

.method public callJS(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public close()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/smartadserver/android/library/h/c;->a()Z

    move-result v0

    .line 153
    const-string v1, "expanded"

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "resized"

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/g;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    const-string v1, "default"

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 156
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a()V

    .line 159
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->j()V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v1, "hidden"

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->c()V

    goto :goto_0
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 14
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/d/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/b/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/b/e;->a(Ljava/lang/String;Z)V

    .line 667
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 670
    const-string v1, "start"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 671
    const-string v3, "end"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 672
    const-string v5, "description"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 673
    const-string v6, "summary"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 674
    const-string v7, "location"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 675
    const-string v8, "recurrence"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 676
    const-string v9, "transparency"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 678
    const-wide/16 v10, -0x1

    cmp-long v0, v3, v10

    if-eqz v0, :cond_1

    sub-long v10, v3, v1

    const-wide/32 v12, 0x5265c00

    cmp-long v0, v10, v12

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 680
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-nez v10, :cond_3

    .line 682
    const-string v0, "Can not create calendar event: invalid start date"

    const-string v1, "createCalendarEvent"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_1
    return-void

    .line 678
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    :cond_3
    cmp-long v10, v1, v3

    if-ltz v10, :cond_4

    const-wide/16 v10, -0x1

    cmp-long v10, v3, v10

    if-eqz v10, :cond_4

    .line 689
    const-string v0, "Can not create calendar event: start date is posterior to end date"

    const-string v1, "createCalendarEvent"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 730
    :catch_0
    move-exception v0

    .line 732
    const-string v0, "Can not create calendar event: incorrect JSON format"

    const-string v1, "createCalendarEvent"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 694
    :cond_4
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.EDIT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    const-string v11, "vnd.android.cursor.item/event"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string v11, "beginTime"

    invoke-virtual {v10, v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 698
    if-eqz v0, :cond_6

    .line 699
    const-string v0, "allDay"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    :goto_2
    const-string v0, "title"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v0, "description"

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v0, "eventLocation"

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v0, "opaque"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 710
    const-string v0, "availability"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    :goto_3
    if-eqz v8, :cond_5

    .line 717
    invoke-static {v8}, Lcom/smartadserver/android/library/h/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 719
    const-string v1, "rrule"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 725
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 701
    :cond_6
    const-string v0, "allDay"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 702
    const-string v0, "endTime"

    invoke-virtual {v10, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_2

    .line 712
    :cond_7
    const-string v0, "availability"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 727
    :cond_8
    const-string v0, "Can not launch calendar activity"

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public createEvent(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 615
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/d/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/b/e;

    invoke-virtual {v3, v0, v1}, Lcom/smartadserver/android/library/b/e;->a(Ljava/lang/String;Z)V

    .line 621
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, p5, v3

    if-nez v0, :cond_3

    move v0, v1

    .line 626
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    const-string v4, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const-string v4, "beginTime"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 630
    if-eqz v0, :cond_1

    .line 631
    const-string v0, "allDay"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    :goto_1
    const-string v0, "title"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v0, "description"

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 649
    :goto_2
    return-void

    .line 633
    :cond_1
    const-string v0, "allDay"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 634
    const-string v0, "endTime"

    invoke-virtual {v3, v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 647
    :cond_2
    const-string v0, "Can not launch calendar activity"

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if (typeof mraid != \'undefined\') mraid.fireLocationChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public executeJSFromNative(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 788
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    const-string v1, "executeJS"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public expand()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->expand(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand():url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "hidden"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    iget-boolean v1, v1, Lcom/smartadserver/android/library/controller/mraid/b;->e:Z

    iput-boolean v1, v0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Z

    .line 203
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/d;->b()Z

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v2, Lcom/smartadserver/android/library/controller/mraid/a$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/smartadserver/android/library/controller/mraid/a$2;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 546
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 547
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 548
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 554
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 555
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 556
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandPolicy()I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandPolicy()I

    move-result v0

    .line 576
    sget-object v1, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExpandPolicy return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return v0
.end method

.method public getExpandProperties()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 776
    const/4 v0, 0x0

    .line 777
    if-eqz v1, :cond_0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{lat:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lon:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "acc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    :cond_0
    sget-object v1, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-object v0
.end method

.method public getMaxSizeString()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 504
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 505
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    const-string v0, ""

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->f(Landroid/content/Context;)I

    move-result v0

    .line 752
    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    if-eq v0, v1, :cond_0

    .line 754
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    .line 756
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrientation() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:I

    return v0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/c;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_0

    const-string v0, "interstitial"

    .line 742
    :goto_0
    sget-object v1, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlacementType() return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    return-object v0

    .line 741
    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getResizeProperties()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSizeString()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 523
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 525
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 527
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    const-string v0, ""

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState() return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isLandscapeDevice()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->g(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isViewable()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 599
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isViewable() return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Z

    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 605
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/b/e;

    const-string v1, "proxy"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/smartadserver/android/library/b/e;->a(Ljava/lang/String;Z)V

    .line 607
    return-void
.end method

.method public resize()V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    const-string v1, "resize method called"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "hidden"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const-string v0, "Can not resize a container in EXPANDED state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:Z

    if-nez v0, :cond_2

    .line 286
    const-string v0, "Can not resize a container with no resize properties set first"

    const-string v1, "Call mraid.setResizeProperties(properties) first"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v2, v0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    .line 295
    :goto_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v3, v0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    .line 297
    :goto_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 298
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 300
    iget-object v6, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/a$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/controller/mraid/a$3;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;IIII)V

    invoke-virtual {v6, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_1

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    goto :goto_2
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMessageHandler()Lcom/smartadserver/android/library/ui/b;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/b;->a(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setCollapseAfterAdClicked(Z)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    iput-boolean p1, v0, Lcom/smartadserver/android/library/controller/mraid/b;->e:Z

    .line 457
    return-void
.end method

.method public setEnableStateChangeEvent(Z)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$1;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/controller/mraid/a$1;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;Z)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public setExpandPolicy(I)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 582
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->setExpandPolicy(I)V

    .line 584
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 418
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :try_start_0
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/b;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/controller/mraid/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->g()V

    .line 432
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail setting expand properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExpandUseCustomCloseProperty(Z)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/controller/mraid/b;

    iput-boolean p1, v0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->g()V

    .line 452
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 486
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :try_start_0
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/c;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/controller/mraid/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail setting orientation properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 466
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResizeProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :try_start_0
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/d;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/controller/mraid/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/d;

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail setting resize properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 361
    return-void
.end method
