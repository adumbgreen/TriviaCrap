.class public Lcom/etermax/adsinterface/a/d;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:J


# instance fields
.field private b:Lcom/etermax/adsinterface/a/e;

.field private c:Lcom/etermax/adsinterface/a/a;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ImageView;

.field private g:J

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/etermax/adsinterface/a/d;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/etermax/adsinterface/a/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    sget v0, Lcom/etermax/p;->CustomDialogAdMobs:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    iput-object p2, p0, Lcom/etermax/adsinterface/a/d;->b:Lcom/etermax/adsinterface/a/e;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/adsinterface/a/d;->g:J

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/etermax/adsinterface/a/d;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/etermax/adsinterface/a/d$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/adsinterface/a/d$1;-><init>(Lcom/etermax/adsinterface/a/d;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->h()Z

    move-result v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/etermax/adsinterface/a/d$2;

    invoke-direct {v1, p0}, Lcom/etermax/adsinterface/a/d$2;-><init>(Lcom/etermax/adsinterface/a/d;)V

    sget-wide v2, Lcom/etermax/adsinterface/a/d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iput-object v1, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    .line 201
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    :cond_0
    iput-object v1, p0, Lcom/etermax/adsinterface/a/d;->h:Landroid/graphics/Bitmap;

    .line 205
    return-void
.end method

.method public a(Lcom/etermax/adsinterface/a/a;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    .line 146
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->d:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iput-object p2, p0, Lcom/etermax/adsinterface/a/d;->h:Landroid/graphics/Bitmap;

    .line 149
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/d;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    invoke-direct {p0}, Lcom/etermax/adsinterface/a/d;->b()V

    .line 151
    return-void
.end method

.method public a(Lcom/etermax/adsinterface/a/a;Landroid/webkit/WebView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    .line 155
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 157
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 159
    invoke-direct {p0}, Lcom/etermax/adsinterface/a/d;->b()V

    .line 160
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 136
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->b:Lcom/etermax/adsinterface/a/e;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/e;->onAdCanceled()V

    .line 137
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->b:Lcom/etermax/adsinterface/a/e;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/e;->onAdCanceled()V

    .line 80
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/d;->dismiss()V

    .line 115
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "CustomAdsContainer - onClick"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "com.etermax.gamescommon.from"

    iget-object v1, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v1}, Lcom/etermax/adsinterface/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :cond_1
    :goto_1
    const/high16 v0, 0x1400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/adsinterface/a/d;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->b:Lcom/etermax/adsinterface/a/e;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/e;->onAdClicked()V

    .line 106
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/d;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "ActivityNotFoundException"

    const-string v2, "error while trying to open link"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/a/l;

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    const-string v1, "NullPointerException"

    const-string v2, "error while trying to click link more than once"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 112
    :catch_2
    move-exception v0

    .line 113
    const-string v1, "UnsupportedEncodingException"

    const-string v2, "error while trying to add session GET parameter in link"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/etermax/k;->interstitial_container:I

    invoke-virtual {p0, v0}, Lcom/etermax/adsinterface/a/d;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/adsinterface/a/d;->setCancelable(Z)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/adsinterface/a/d;->setCanceledOnTouchOutside(Z)V

    .line 66
    sget v0, Lcom/etermax/i;->ad_image:I

    invoke-virtual {p0, v0}, Lcom/etermax/adsinterface/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/adsinterface/a/d;->f:Landroid/widget/ImageView;

    .line 67
    sget v0, Lcom/etermax/i;->ad_close_button:I

    invoke-virtual {p0, v0}, Lcom/etermax/adsinterface/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/adsinterface/a/d;->e:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/etermax/i;->ad_web_container:I

    invoke-virtual {p0, v0}, Lcom/etermax/adsinterface/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/etermax/adsinterface/a/d;->d:Landroid/view/ViewGroup;

    .line 73
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/d;->a()V

    .line 195
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 196
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/etermax/adsinterface/a/d;->c:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v1}, Lcom/etermax/adsinterface/a/a;->h()Z

    move-result v1

    .line 179
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/etermax/adsinterface/a/d;->g:J

    sub-long/2addr v1, v3

    .line 181
    sget-wide v3, Lcom/etermax/adsinterface/a/d;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d;->b:Lcom/etermax/adsinterface/a/e;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/e;->onAdCanceled()V

    .line 183
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/d;->dismiss()V

    .line 184
    const/4 v0, 0x1

    .line 189
    :cond_0
    return v0
.end method
