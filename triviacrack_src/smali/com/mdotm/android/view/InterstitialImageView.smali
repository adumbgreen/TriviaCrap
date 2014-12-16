.class Lcom/mdotm/android/view/InterstitialImageView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Z

.field b:Landroid/os/Handler;

.field c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/mdotm/android/c/c;

.field private h:Landroid/widget/ProgressBar;

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/webkit/WebView;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mdotm/android/view/InterstitialImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/high16 v0, -0x100

    iput v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->i:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->l:Landroid/webkit/WebView;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->m:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/high16 v0, -0x100

    iput v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->i:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->l:Landroid/webkit/WebView;

    .line 66
    iput-boolean v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->m:Z

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->b:Landroid/os/Handler;

    .line 110
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->f:I

    .line 111
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->l:Landroid/webkit/WebView;

    .line 112
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->l:Landroid/webkit/WebView;

    new-instance v1, Lcom/mdotm/android/view/InterstitialImageView$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/InterstitialImageView$1;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 195
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iput-object p3, p0, Lcom/mdotm/android/view/InterstitialImageView;->g:Lcom/mdotm/android/c/c;

    .line 201
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/InterstitialImageView;->setFocusable(Z)V

    .line 203
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 204
    new-instance v0, Lcom/mdotm/android/view/InterstitialImageView$2;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/InterstitialImageView$2;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-direct {p0, v2}, Lcom/mdotm/android/view/InterstitialImageView;->b(Z)V

    .line 219
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/mdotm/android/view/InterstitialImageView;->a(Lcom/mdotm/android/d/b;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v0, "Exception initializing interstitial adview"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iput-boolean v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->a:Z

    goto :goto_0
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 640
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 641
    return v0
.end method

.method static synthetic a(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/mdotm/android/view/InterstitialImageView;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 427
    .line 428
    if-eqz p1, :cond_2

    .line 433
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 440
    const/16 v2, 0x2710

    .line 441
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 447
    const/16 v2, 0x2710

    .line 449
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 451
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 453
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 454
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 455
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 457
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 468
    :goto_0
    if-eqz v2, :cond_0

    .line 470
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 480
    :cond_0
    :goto_1
    return-object v0

    .line 463
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 464
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem while fetchImage()  :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 468
    if-eqz v2, :cond_0

    .line 470
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 471
    :catch_1
    move-exception v1

    goto :goto_1

    .line 467
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 468
    :goto_3
    if-eqz v2, :cond_1

    .line 470
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 476
    :cond_1
    :goto_4
    throw v0

    .line 478
    :cond_2
    const-string v1, "Image url is null"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 471
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_1

    .line 467
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 463
    :catch_4
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private static a(II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 365
    const-string v0, ""

    const-string v1, "populate backgnd called"

    invoke-static {v0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 367
    const-string v1, ""

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rect width and height "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v1, v2}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 370
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 369
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 371
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 373
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 374
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 376
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 378
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->l:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 542
    const-string v0, "  Selected to clicked  "

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->e:Ljava/lang/String;

    .line 547
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->b(Z)V

    .line 548
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->c()V

    .line 549
    new-instance v1, Lcom/mdotm/android/view/InterstitialImageView$4;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/InterstitialImageView$4;-><init>(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v1}, Lcom/mdotm/android/view/InterstitialImageView$4;->start()V

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v0, "ad selection under progress"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_1
    const-string v0, "selected ad is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/mdotm/android/d/b;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0x32

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 383
    if-eqz p1, :cond_0

    .line 384
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 391
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 399
    iput-boolean v3, p0, Lcom/mdotm/android/view/InterstitialImageView;->a:Z

    .line 416
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 403
    const-string v1, "Oops! error while downloading Image. Click here to view detail."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 407
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 411
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 413
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 414
    iput-boolean v3, p0, Lcom/mdotm/android/view/InterstitialImageView;->a:Z

    goto :goto_0
.end method

.method private a(Lcom/mdotm/android/d/b;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x1e

    const/16 v2, 0x19

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 230
    if-eqz p1, :cond_4

    .line 231
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    .line 232
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 233
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/mdotm/android/view/InterstitialImageView;->a(I)I

    move-result v1

    .line 234
    invoke-direct {p0, v2}, Lcom/mdotm/android/view/InterstitialImageView;->a(I)I

    move-result v2

    .line 233
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 238
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 239
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 240
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 243
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->e:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/InterstitialImageView;->setFocusable(Z)V

    .line 251
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 254
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 256
    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->c:Landroid/graphics/Bitmap;

    .line 269
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/mdotm/android/view/InterstitialImageView;->a(Lcom/mdotm/android/d/b;Landroid/graphics/Bitmap;)V

    .line 301
    :goto_1
    invoke-direct {p0, v3}, Lcom/mdotm/android/view/InterstitialImageView;->a(Z)V

    .line 303
    invoke-static {p0}, Lcom/mdotm/android/view/InterstitialImageView;->f(Lcom/mdotm/android/view/InterstitialImageView;)I

    move-result v0

    .line 304
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setVisibility(I)V

    .line 311
    :goto_2
    return-void

    .line 263
    :cond_1
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/mdotm/android/view/InterstitialImageView;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 277
    :cond_2
    const-string v0, "Unable to create bitmap from cached file. Trying to download from remote"

    .line 276
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-boolean v3, p0, Lcom/mdotm/android/view/InterstitialImageView;->a:Z

    .line 279
    new-instance v0, Lcom/mdotm/android/view/InterstitialImageView$3;

    invoke-direct {v0, p0, p1}, Lcom/mdotm/android/view/InterstitialImageView$3;-><init>(Lcom/mdotm/android/view/InterstitialImageView;Lcom/mdotm/android/d/b;)V

    .line 295
    invoke-virtual {v0}, Lcom/mdotm/android/view/InterstitialImageView$3;->start()V

    .line 296
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 299
    :cond_3
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->c()V

    goto :goto_1

    .line 307
    :cond_4
    iput-boolean v4, p0, Lcom/mdotm/android/view/InterstitialImageView;->a:Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/mdotm/android/view/InterstitialImageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/InterstitialImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/InterstitialImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mdotm/android/view/InterstitialImageView;->m:Z

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " drawBackgroundView   :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 346
    const v0, -0x1180d9

    const/16 v1, -0x4c00

    .line 345
    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->j:Landroid/graphics/drawable/Drawable;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 352
    const/high16 v0, -0x100

    .line 353
    iget v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->i:I

    .line 352
    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->k:Landroid/graphics/drawable/Drawable;

    .line 355
    :cond_1
    if-eqz p1, :cond_2

    .line 356
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->d:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    const-string v0, "On ad network completed"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 605
    invoke-direct {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->b(Z)V

    .line 606
    iput-boolean v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->m:Z

    .line 607
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->d()V

    .line 608
    return-void
.end method

.method static synthetic b(Lcom/mdotm/android/view/InterstitialImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->b()V

    return-void
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/mdotm/android/view/InterstitialImageView;->d:Z

    .line 486
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 612
    new-instance v0, Lcom/mdotm/android/view/InterstitialImageView$5;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/InterstitialImageView$5;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->post(Ljava/lang/Runnable;)Z

    .line 622
    return-void
.end method

.method static synthetic c(Lcom/mdotm/android/view/InterstitialImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/mdotm/android/view/InterstitialImageView;)Lcom/mdotm/android/c/c;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->g:Lcom/mdotm/android/c/c;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 626
    new-instance v0, Lcom/mdotm/android/view/InterstitialImageView$6;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/InterstitialImageView$6;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->post(Ljava/lang/Runnable;)Z

    .line 636
    return-void
.end method

.method static synthetic e(Lcom/mdotm/android/view/InterstitialImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/mdotm/android/view/InterstitialImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/mdotm/android/view/InterstitialImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->f:I

    return v0
.end method

.method static synthetic h(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mdotm/android/d/b;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v0

    sget v1, Lcom/mdotm/android/e/f;->b:I

    if-ne v0, v1, :cond_1

    .line 317
    invoke-direct {p0, p2, p1}, Lcom/mdotm/android/view/InterstitialImageView;->a(Landroid/graphics/Bitmap;Lcom/mdotm/android/d/b;)V

    .line 318
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->removeView(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 322
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->d()V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->a:Z

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Woooo!! unable to display ad, We got unsupported ad type for interstitial. AdType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 497
    iget-boolean v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->m:Z

    if-nez v1, :cond_0

    .line 498
    if-ne v0, v2, :cond_0

    .line 499
    iput-boolean v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->m:Z

    .line 500
    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->a(Landroid/content/Context;)V

    .line 503
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
