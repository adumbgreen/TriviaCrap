.class public Lcom/mdotm/android/view/MdotMActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/mdotm/android/c/c;
.implements Lcom/mdotm/android/c/d;


# instance fields
.field a:Landroid/os/Handler;

.field b:Z

.field c:Z

.field private d:Lcom/mdotm/android/d/b;

.field private e:Lcom/mdotm/android/c/a;

.field private f:J

.field private g:Lcom/mdotm/android/view/c;

.field private h:Lcom/mdotm/android/view/InterstitialImageView;

.field private i:Lcom/mdotm/android/view/a;

.field private j:Landroid/webkit/WebView;

.field private k:I

.field private l:Z

.field private m:Landroid/widget/RelativeLayout;

.field private n:I

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->j:Landroid/webkit/WebView;

    .line 59
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    .line 60
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->c:Z

    .line 42
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scale = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result px = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    return v0
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->j:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMActivity;->l:Z

    return-void
.end method

.method static synthetic b(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/c/a;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/mdotm/android/view/MdotMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/d/b;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    return-object v0
.end method

.method private g()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, -0x2

    .line 354
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 355
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 368
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 369
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 371
    new-instance v2, Lcom/mdotm/android/view/MdotMActivity$2;

    invoke-direct {v2, p0}, Lcom/mdotm/android/view/MdotMActivity$2;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    invoke-virtual {v3, v2}, Lcom/mdotm/android/view/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 392
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->h()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 393
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 394
    return-object v0
.end method

.method private h()Landroid/widget/RelativeLayout;
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0xb

    const/4 v4, -0x2

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 400
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 401
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    invoke-virtual {v1, v2, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 407
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 410
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 412
    iget-boolean v2, p0, Lcom/mdotm/android/view/MdotMActivity;->o:Z

    if-eqz v2, :cond_0

    .line 413
    iget v2, p0, Lcom/mdotm/android/view/MdotMActivity;->q:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 421
    invoke-direct {p0, v6}, Lcom/mdotm/android/view/MdotMActivity;->a(I)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/mdotm/android/view/MdotMActivity;->a(I)I

    move-result v4

    .line 420
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 422
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 423
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    new-instance v2, Lcom/mdotm/android/view/MdotMActivity$3;

    invoke-direct {v2, p0}, Lcom/mdotm/android/view/MdotMActivity$3;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 437
    return-object v0

    .line 417
    :cond_0
    const-string v2, "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"

    .line 418
    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 457
    .line 458
    const/4 v0, 0x0

    .line 456
    :try_start_0
    invoke-static {p1, v0}, Lcom/mdotm/android/e/c;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 459
    const/4 v1, 0x0

    .line 460
    array-length v2, v0

    .line 459
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 464
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()V
    .locals 2

    .prologue
    .line 556
    const-string v0, "  Selected to clicked  "

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    .line 562
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 563
    new-instance v1, Lcom/mdotm/android/view/MdotMActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/MdotMActivity$4;-><init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMActivity$4;->start()V

    .line 618
    :goto_0
    return-void

    .line 613
    :cond_0
    const-string v0, "ad selection under progress"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_1
    const-string v0, "selected ads landing url is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 622
    const-string v0, "Error while loading the ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 629
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->l:Z

    .line 487
    const-string v0, "clicked on ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    invoke-interface {v0}, Lcom/mdotm/android/c/a;->d()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/c;->a(Landroid/os/Handler;)V

    .line 502
    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    invoke-interface {v0}, Lcom/mdotm/android/c/a;->b()V

    .line 513
    :cond_0
    return-void
.end method

.method public didShowInterstitial()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 549
    const-string v0, "completed palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 535
    const-string v0, "Error while palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    invoke-interface {v0}, Lcom/mdotm/android/c/a;->c()V

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 545
    return-void
.end method

.method public onBannerAdClick()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 472
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0xb

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    const-string v0, "onCreate is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMActivity;->n:I

    .line 75
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->o:Z

    .line 76
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "frame_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMActivity;->p:I

    .line 77
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "close_btn_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMActivity;->q:I

    .line 78
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->o:Z

    if-eqz v0, :cond_0

    .line 79
    iput v4, p0, Lcom/mdotm/android/view/MdotMActivity;->n:I

    .line 93
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->a:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->j:Landroid/webkit/WebView;

    .line 95
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->j:Landroid/webkit/WebView;

    new-instance v1, Lcom/mdotm/android/view/MdotMActivity$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMActivity$1;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 189
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 190
    const-string v1, "response"

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/d/b;

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    .line 191
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    const-string v1, "InterstitialActionListenerId"

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mdotm/android/view/MdotMActivity;->f:J

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listener id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mdotm/android/view/MdotMActivity;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    .line 195
    iget-wide v1, p0, Lcom/mdotm/android/view/MdotMActivity;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/e/f;->a(J)Lcom/mdotm/android/c/a;

    move-result-object v0

    .line 194
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    .line 196
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    if-eqz v0, :cond_a

    .line 197
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ScreenOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 198
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->setRequestedOrientation(I)V

    .line 202
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->g()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMActivity;->k:I

    .line 205
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 213
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 220
    iget-boolean v2, p0, Lcom/mdotm/android/view/MdotMActivity;->o:Z

    if-eqz v2, :cond_2

    .line 221
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 222
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget v1, p0, Lcom/mdotm/android/view/MdotMActivity;->p:I

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 229
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_2

    .line 230
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 232
    :cond_2
    iget v1, p0, Lcom/mdotm/android/view/MdotMActivity;->n:I

    if-ne v4, v1, :cond_3

    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->o:Z

    if-nez v1, :cond_3

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_3

    .line 234
    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 236
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resource type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mdotm/android/view/MdotMActivity;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/mdotm/android/view/MdotMActivity;->k:I

    sget v2, Lcom/mdotm/android/b/c;->f:I

    if-ne v1, v2, :cond_6

    .line 238
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->b()I

    move-result v1

    sget v2, Lcom/mdotm/android/e/f;->b:I

    if-ne v1, v2, :cond_6

    .line 239
    new-instance v1, Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-direct {v1, p0, v2, p0}, Lcom/mdotm/android/view/InterstitialImageView;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;)V

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->h:Lcom/mdotm/android/view/InterstitialImageView;

    .line 240
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->h:Lcom/mdotm/android/view/InterstitialImageView;

    iget-boolean v1, v1, Lcom/mdotm/android/view/InterstitialImageView;->a:Z

    if-nez v1, :cond_5

    .line 241
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->b()V

    .line 243
    const-string v1, "Failed to load interstitial banner ad"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->setContentView(Landroid/view/View;)V

    .line 305
    :goto_2
    return-void

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ScreenOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 200
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 246
    :cond_5
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->h()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->m:Landroid/widget/RelativeLayout;

    .line 248
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->h:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 249
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->h()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 250
    const-string v1, "Call report impression imageresource"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v1, v2, p0}, Lcom/mdotm/android/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 257
    :cond_6
    iget v1, p0, Lcom/mdotm/android/view/MdotMActivity;->k:I

    sget v2, Lcom/mdotm/android/b/c;->h:I

    if-eq v1, v2, :cond_7

    .line 258
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->g()I

    move-result v1

    sget v2, Lcom/mdotm/android/b/c;->i:I

    if-eq v1, v2, :cond_7

    .line 259
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->g()I

    move-result v1

    sget v2, Lcom/mdotm/android/b/c;->f:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    .line 260
    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->b()I

    move-result v1

    sget v2, Lcom/mdotm/android/e/f;->a:I

    if-ne v1, v2, :cond_8

    .line 261
    :cond_7
    const-string v1, "loading html page"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/mdotm/android/view/a;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    iget v3, p0, Lcom/mdotm/android/view/MdotMActivity;->n:I

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/mdotm/android/view/a;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;I)V

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->i:Lcom/mdotm/android/view/a;

    .line 263
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->i:Lcom/mdotm/android/view/a;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mdotm/android/view/a;->setGravity(I)V

    .line 264
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->i:Lcom/mdotm/android/view/a;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 265
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->h()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->m:Landroid/widget/RelativeLayout;

    .line 266
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 272
    :cond_8
    iget v1, p0, Lcom/mdotm/android/view/MdotMActivity;->k:I

    sget v2, Lcom/mdotm/android/b/c;->g:I

    if-ne v1, v2, :cond_9

    .line 274
    new-instance v1, Lcom/mdotm/android/view/c;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-direct {v1, p0, v2, p0}, Lcom/mdotm/android/view/c;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;)V

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    .line 275
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->g()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 283
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This format is not supported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->d:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    goto/16 :goto_1

    .line 297
    :cond_a
    const-string v0, "Ad response is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 344
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    .line 345
    iget-wide v1, p0, Lcom/mdotm/android/view/MdotMActivity;->f:J

    .line 344
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/e/f;->b(J)V

    .line 347
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/c;->a(Landroid/os/Handler;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 517
    const-string v0, "onDismiss is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->c:Z

    .line 523
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->e:Lcom/mdotm/android/c/a;

    invoke-interface {v0}, Lcom/mdotm/android/c/a;->a()V

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->finish()V

    .line 531
    return-void

    .line 528
    :cond_0
    const-string v0, "InterstitialActionListener is null. So ignoring the interstitial dismiss callback"

    .line 527
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailedToReceiveBannerAd()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key down "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 481
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLeaveApplicationFromBanner()V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 330
    const-string v0, "onPause is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    invoke-virtual {v0}, Lcom/mdotm/android/view/c;->a()V

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->l:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->c:Z

    if-nez v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 338
    :cond_1
    return-void
.end method

.method public onReceiveBannerAd()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 310
    const-string v0, "onResume is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->l:Z

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->l:Z

    .line 323
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 325
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    invoke-virtual {v0}, Lcom/mdotm/android/view/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->g:Lcom/mdotm/android/view/c;

    invoke-virtual {v0}, Lcom/mdotm/android/view/c;->b()V

    goto :goto_0
.end method

.method public willShowInterstitial()V
    .locals 0

    .prologue
    .line 689
    return-void
.end method
