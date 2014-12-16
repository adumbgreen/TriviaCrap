.class Lcom/mdotm/android/view/MdotMView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mdotm/android/c/c;
.implements Lcom/mdotm/android/c/d;
.implements Lcom/mdotm/android/c/e;


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/util/Timer;

.field public c:Z

.field private d:Lcom/mdotm/android/c/d;

.field private e:Lcom/mdotm/android/d/a;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    .line 44
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    .line 49
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->g:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    .line 51
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->c:Z

    .line 59
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->a:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    .line 44
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    .line 49
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->g:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    .line 51
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->c:Z

    .line 76
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->a:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    .line 44
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    .line 49
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->g:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    .line 51
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->c:Z

    .line 71
    return-void
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 150
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 151
    return v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v0, "Sending request "

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    invoke-virtual {v0}, Lcom/mdotm/android/d/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/MdotMView;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1d4

    if-eq v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2d8

    if-ne v1, v2, :cond_2

    .line 126
    :cond_0
    const-string v0, "Sending ad request of tablet size for phone "

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveBannerAd()V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMView;->a(I)I

    move-result v1

    .line 131
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMView;->a(I)I

    move-result v0

    .line 132
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->getDeviceWidth()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mdotm/android/d/a;->c(Ljava/lang/String;)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    invoke-virtual {v0}, Lcom/mdotm/android/d/a;->f()I

    move-result v0

    if-lez v0, :cond_4

    .line 136
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->b()V

    goto :goto_0

    .line 137
    :cond_4
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "MdotMView is visible so requesting for ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/b/e;->a(Landroid/content/Context;)Lcom/mdotm/android/b/e;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    .line 139
    invoke-virtual {v0, v1, p0}, Lcom/mdotm/android/b/e;->a(Lcom/mdotm/android/d/a;Lcom/mdotm/android/c/e;)V

    .line 141
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/b/e;->a(Landroid/content/Context;)Lcom/mdotm/android/b/e;

    move-result-object v0

    .line 142
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/b/e;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMView;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/mdotm/android/view/MdotMView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 156
    const/16 v2, 0x3e8

    .line 158
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    invoke-virtual {v0}, Lcom/mdotm/android/d/a;->f()I

    move-result v0

    mul-int/lit16 v4, v0, 0x3e8

    .line 163
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->b:Ljava/util/Timer;

    .line 165
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->b:Ljava/util/Timer;

    new-instance v1, Lcom/mdotm/android/view/MdotMView$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMView$1;-><init>(Lcom/mdotm/android/view/MdotMView;)V

    .line 192
    int-to-long v2, v2

    int-to-long v4, v4

    .line 165
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 194
    return-void
.end method

.method static synthetic c(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/d/a;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    return-object v0
.end method

.method static synthetic d(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/c/d;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    return-object v0
.end method

.method private getDeviceWidth()I
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 331
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMView;->i:I

    .line 341
    :goto_0
    iget v0, p0, Lcom/mdotm/android/view/MdotMView;->i:I

    return v0

    .line 337
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 339
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/mdotm/android/view/MdotMView;->i:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/mdotm/android/d/b;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->l()I

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adResponse.isRequestForBannerAd() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMView$2;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/view/MdotMView$2;-><init>(Lcom/mdotm/android/view/MdotMView;Lcom/mdotm/android/d/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveBannerAd()V

    goto :goto_0
.end method

.method public a(Lcom/mdotm/android/vast/e;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 345
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 346
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 344
    goto :goto_0

    :cond_1
    move v3, v2

    .line 345
    goto :goto_1

    :cond_2
    move v2, v1

    .line 346
    goto :goto_2
.end method

.method public b(Lcom/mdotm/android/d/b;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 233
    .line 234
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->c:Z

    if-nez v0, :cond_7

    .line 235
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v0

    sget v1, Lcom/mdotm/android/e/f;->b:I

    if-eq v0, v1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v0

    sget v1, Lcom/mdotm/android/e/f;->a:I

    if-ne v0, v1, :cond_7

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->g()I

    move-result v0

    sget v1, Lcom/mdotm/android/b/c;->f:I

    if-ne v0, v1, :cond_3

    .line 238
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v0

    sget v1, Lcom/mdotm/android/e/f;->b:I

    if-ne v0, v1, :cond_3

    .line 239
    new-instance v1, Lcom/mdotm/android/view/MdotMBannerView;

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/mdotm/android/view/MdotMBannerView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 240
    check-cast v0, Lcom/mdotm/android/view/MdotMBannerView;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-virtual {v0, v3, p1, p0}, Lcom/mdotm/android/view/MdotMBannerView;->a(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;)V

    .line 242
    const-string v0, "continuing"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 243
    check-cast v0, Lcom/mdotm/android/view/MdotMBannerView;

    iget-boolean v0, v0, Lcom/mdotm/android/view/MdotMBannerView;->a:Z

    if-nez v0, :cond_2

    move-object v1, v2

    .line 280
    :cond_1
    :goto_0
    return-object v1

    .line 245
    :cond_2
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->c:Z

    if-nez v0, :cond_1

    .line 246
    const-string v0, "Call report impression image"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 247
    invoke-virtual {v0, v2, v3}, Lcom/mdotm/android/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->g()I

    move-result v0

    sget v1, Lcom/mdotm/android/b/c;->h:I

    if-eq v0, v1, :cond_4

    .line 252
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->g()I

    move-result v0

    sget v1, Lcom/mdotm/android/b/c;->i:I

    if-eq v0, v1, :cond_4

    .line 253
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->g()I

    move-result v0

    sget v1, Lcom/mdotm/android/b/c;->f:I

    if-ne v0, v1, :cond_6

    .line 254
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v0

    sget v1, Lcom/mdotm/android/e/f;->a:I

    if-ne v0, v1, :cond_6

    .line 256
    :cond_4
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    if-eqz v0, :cond_5

    .line 264
    const-string v0, "html resource"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/mdotm/android/view/a;

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p0, v2}, Lcom/mdotm/android/view/a;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;I)V

    goto :goto_0

    .line 267
    :cond_5
    const-string v0, "mAdViewHasFocus = false"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 269
    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->g()I

    move-result v0

    sget v1, Lcom/mdotm/android/b/c;->g:I

    if-ne v0, v1, :cond_7

    .line 274
    const-string v0, "Video is not supported"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 275
    goto :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method public b(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    .line 114
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    .line 115
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->e:Lcom/mdotm/android/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/d/a;->b(Z)V

    .line 116
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->a()V

    .line 118
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onBannerAdClick()V

    .line 356
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->g:Z

    .line 361
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onLeaveApplicationFromBanner()V

    .line 365
    :cond_0
    return-void
.end method

.method public didShowInterstitial()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onBannerAdClick()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "yes"

    const-string v1, "banner clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->d:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onDismissScreen()V

    .line 373
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    return-void
.end method

.method public onFailedToReceiveBannerAd()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onLeaveApplicationFromBanner()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onReceiveBannerAd()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window focused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    if-eqz p1, :cond_1

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    .line 92
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/b/e;->a(Landroid/content/Context;)Lcom/mdotm/android/b/e;

    move-result-object v0

    .line 93
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/b/e;->a(Z)V

    .line 99
    :goto_0
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->g:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Focus gained "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->g:Z

    .line 102
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMView;->onDismissScreen()V

    .line 104
    :cond_0
    return-void

    .line 95
    :cond_1
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    .line 96
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/b/e;->a(Landroid/content/Context;)Lcom/mdotm/android/b/e;

    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->h:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/b/e;->a(Z)V

    goto :goto_0
.end method

.method public willShowInterstitial()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method
