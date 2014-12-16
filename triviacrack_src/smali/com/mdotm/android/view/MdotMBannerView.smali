.class Lcom/mdotm/android/view/MdotMBannerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static b:Lcom/mdotm/android/view/MdotMBannerView;

.field private static l:Landroid/graphics/drawable/Drawable;

.field private static final p:Landroid/graphics/Typeface;


# instance fields
.field public a:Z

.field c:Landroid/os/Handler;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/mdotm/android/c/c;

.field private g:Landroid/widget/ProgressBar;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private m:Z

.field private n:Landroid/webkit/WebView;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/mdotm/android/view/MdotMBannerView;->b:Lcom/mdotm/android/view/MdotMBannerView;

    .line 71
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 70
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/mdotm/android/view/MdotMBannerView;->p:Landroid/graphics/Typeface;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->j:I

    .line 62
    const/high16 v0, -0x100

    iput v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->k:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->m:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->n:Landroid/webkit/WebView;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mdotm/android/view/MdotMBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->j:I

    .line 62
    const/high16 v0, -0x100

    iput v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->k:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->m:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->n:Landroid/webkit/WebView;

    .line 90
    return-void
.end method

.method private a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 461
    .line 462
    if-eqz p1, :cond_2

    .line 467
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 474
    const/16 v2, 0x1388

    .line 475
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 482
    const/16 v2, 0x1388

    .line 483
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 487
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 490
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 492
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 493
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    .line 492
    if-ne v2, v3, :cond_3

    .line 494
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 498
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 510
    :goto_0
    if-eqz v2, :cond_0

    .line 512
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 522
    :cond_0
    :goto_1
    return-object v0

    .line 504
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 507
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem while fetchImage()  :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 510
    if-eqz v2, :cond_0

    .line 512
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 513
    :catch_1
    move-exception v1

    goto :goto_1

    .line 509
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 510
    :goto_3
    if-eqz v2, :cond_1

    .line 512
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 518
    :cond_1
    :goto_4
    throw v0

    .line 520
    :cond_2
    const-string v1, "Image url is null"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_1

    .line 509
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 504
    :catch_4
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method static synthetic a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mdotm/android/view/MdotMBannerView;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMBannerView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->n:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/mdotm/android/d/b;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 393
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 396
    const-string v0, "Creating ad with bannerView view"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 398
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->h()I

    move-result v3

    .line 399
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->i()I

    move-result v4

    .line 397
    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 400
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 402
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "The banner view is:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMBannerView;->addView(Landroid/view/View;)V

    .line 407
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMBannerView;->a:Z

    .line 408
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/mdotm/android/d/b;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    if-eqz p1, :cond_8

    .line 170
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->o:I

    .line 171
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->n:Landroid/webkit/WebView;

    .line 172
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 173
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->n:Landroid/webkit/WebView;

    new-instance v1, Lcom/mdotm/android/view/MdotMBannerView$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMBannerView$1;-><init>(Lcom/mdotm/android/view/MdotMBannerView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 285
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->e:Ljava/lang/String;

    .line 288
    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMBannerView;->setFocusable(Z)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMBannerView;->setClickable(Z)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->h:Ljava/lang/ref/WeakReference;

    .line 291
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 294
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 292
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->h:Ljava/lang/ref/WeakReference;

    .line 321
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iput v4, p0, Lcom/mdotm/android/view/MdotMBannerView;->i:I

    .line 324
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 326
    const-string v0, "The icon is nou null"

    .line 325
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    new-instance v0, Landroid/widget/ProgressBar;

    .line 328
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 327
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    .line 329
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 330
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    const/16 v0, 0x28

    const/16 v2, 0x28

    .line 330
    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 332
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 335
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 336
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 337
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/mdotm/android/view/MdotMBannerView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v0

    sget v2, Lcom/mdotm/android/e/f;->b:I

    if-ne v0, v2, :cond_5

    .line 342
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 341
    invoke-direct {p0, v0, p1}, Lcom/mdotm/android/view/MdotMBannerView;->a(Landroid/graphics/Bitmap;Lcom/mdotm/android/d/b;)V

    .line 344
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 347
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->addView(Landroid/view/View;)V

    .line 380
    :cond_2
    invoke-static {p0}, Lcom/mdotm/android/view/MdotMBannerView;->e(Lcom/mdotm/android/view/MdotMBannerView;)I

    move-result v0

    .line 381
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->setVisibility(I)V

    .line 388
    :goto_2
    return-void

    .line 298
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_4

    .line 299
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 300
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 304
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 306
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-direct {p0, v1, v3}, Lcom/mdotm/android/view/MdotMBannerView;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 304
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->h:Ljava/lang/ref/WeakReference;

    .line 312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_0

    .line 313
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 314
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0

    .line 350
    :cond_5
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v0

    sget v2, Lcom/mdotm/android/e/f;->a:I

    if-ne v0, v2, :cond_6

    .line 353
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 352
    invoke-direct {p0, v0, p1}, Lcom/mdotm/android/view/MdotMBannerView;->b(Landroid/graphics/Bitmap;Lcom/mdotm/android/d/b;)V

    .line 355
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 358
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 361
    :cond_6
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMBannerView;->a:Z

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Woooo!! unable to display ad, We got unsupported ad type. : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 374
    :cond_7
    const-string v0, "The icon is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMBannerView;->a:Z

    goto :goto_2

    .line 384
    :cond_8
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMBannerView;->a:Z

    goto :goto_2
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMBannerView;->d:Z

    .line 528
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;Lcom/mdotm/android/d/b;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 412
    iget v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->k:I

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->setBackgroundColor(I)V

    .line 413
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 415
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 415
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 417
    iget v2, p0, Lcom/mdotm/android/view/MdotMBannerView;->i:I

    iget v3, p0, Lcom/mdotm/android/view/MdotMBannerView;->i:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/mdotm/android/view/MdotMBannerView;->i:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 421
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->addView(Landroid/view/View;)V

    .line 423
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 426
    sget-object v1, Lcom/mdotm/android/view/MdotMBannerView;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 427
    iget v1, p0, Lcom/mdotm/android/view/MdotMBannerView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setId(I)V

    .line 431
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 435
    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 442
    :cond_0
    const/16 v2, 0x32

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v9, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 443
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->addView(Landroid/view/View;)V

    .line 448
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->setGravity(I)V

    .line 449
    iput-boolean v6, p0, Lcom/mdotm/android/view/MdotMBannerView;->a:Z

    .line 450
    return-void
.end method

.method static synthetic b(Lcom/mdotm/android/view/MdotMBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->d()V

    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->d:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 582
    const-string v0, "Ad Clicked"

    const-string v1, "Ad Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Selected to clicked  is selection in progress "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->a(Z)V

    .line 590
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->e:Ljava/lang/String;

    .line 592
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->e()V

    .line 593
    new-instance v1, Lcom/mdotm/android/view/MdotMBannerView$2;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/MdotMBannerView$2;-><init>(Lcom/mdotm/android/view/MdotMBannerView;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMBannerView$2;->start()V

    .line 647
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v0, "ad selection under progress"

    .line 641
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_1
    const-string v0, "selected ad is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/mdotm/android/view/MdotMBannerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/mdotm/android/view/MdotMBannerView;)Lcom/mdotm/android/c/c;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->f:Lcom/mdotm/android/c/c;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    const-string v0, "On ad network completed"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->setClickable(Z)V

    .line 653
    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMBannerView;->a(Z)V

    .line 654
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMBannerView;->m:Z

    .line 655
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->f()V

    .line 656
    return-void
.end method

.method static synthetic e(Lcom/mdotm/android/view/MdotMBannerView;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 660
    new-instance v0, Lcom/mdotm/android/view/MdotMBannerView$3;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMBannerView$3;-><init>(Lcom/mdotm/android/view/MdotMBannerView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method static synthetic f(Lcom/mdotm/android/view/MdotMBannerView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->o:I

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 674
    new-instance v0, Lcom/mdotm/android/view/MdotMBannerView$4;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMBannerView$4;-><init>(Lcom/mdotm/android/view/MdotMBannerView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-void
.end method

.method static synthetic g(Lcom/mdotm/android/view/MdotMBannerView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->c:Landroid/os/Handler;

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->h()I

    move-result v1

    .line 131
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->i()I

    move-result v2

    .line 129
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMBannerView;->f:Lcom/mdotm/android/c/c;

    .line 136
    invoke-virtual {p0, v4}, Lcom/mdotm/android/view/MdotMBannerView;->setFocusable(Z)V

    .line 137
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->setDescendantFocusability(I)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/mdotm/android/view/MdotMBannerView;->setClickable(Z)V

    .line 139
    invoke-direct {p0, v3}, Lcom/mdotm/android/view/MdotMBannerView;->a(Z)V

    .line 141
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/mdotm/android/view/MdotMBannerView;->a(Lcom/mdotm/android/d/b;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 144
    const-string v0, "Exception initializing banner adview"

    .line 143
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMBannerView;->a:Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 537
    const-string v0, "key event"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 539
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMBannerView;->m:Z

    if-nez v1, :cond_0

    .line 540
    if-ne v0, v2, :cond_0

    .line 541
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMBannerView;->m:Z

    .line 542
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->c()V

    .line 545
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 550
    const-string v0, "touch"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 555
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getLeft()I

    move-result v3

    .line 556
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getTop()I

    move-result v4

    .line 557
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getRight()I

    move-result v5

    .line 558
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMBannerView;->getBottom()I

    move-result v6

    .line 560
    const-string v7, "  Selected  "

    invoke-static {p0, v7}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    int-to-float v3, v5

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    int-to-float v1, v4

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_0

    int-to-float v1, v6

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 563
    :cond_0
    const-string v0, "Always outside of ad display area "

    .line 562
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 566
    :cond_2
    if-ne v0, v8, :cond_3

    .line 567
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMBannerView;->m:Z

    if-nez v0, :cond_1

    .line 568
    iput-boolean v8, p0, Lcom/mdotm/android/view/MdotMBannerView;->m:Z

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMBannerView;->setClickable(Z)V

    .line 570
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMBannerView;->c()V

    goto :goto_0

    .line 572
    :cond_3
    if-nez v0, :cond_1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "on attached to window"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 156
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "on detached from window"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 163
    return-void
.end method
