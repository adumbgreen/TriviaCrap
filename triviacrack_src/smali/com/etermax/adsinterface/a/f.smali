.class public Lcom/etermax/adsinterface/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private a:Lcom/etermax/adsinterface/a/a;

.field private b:Landroid/support/v4/app/FragmentActivity;

.field private c:Lcom/etermax/tools/d/g;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/etermax/adsinterface/a/g;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/adsinterface/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/etermax/adsinterface/a/f;->b:Landroid/support/v4/app/FragmentActivity;

    .line 40
    iput-object p2, p0, Lcom/etermax/adsinterface/a/f;->a:Lcom/etermax/adsinterface/a/a;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/etermax/adsinterface/a/f;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/adsinterface/a/f;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/etermax/adsinterface/a/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 244
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 245
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 248
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 73
    const/4 v0, 0x0

    .line 77
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-lt v2, v3, :cond_0

    .line 78
    const-string v0, "xhdpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    if-nez v0, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-lt v2, v3, :cond_1

    .line 81
    const-string v0, "hdpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_1
    if-nez v0, :cond_2

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-lt v2, v3, :cond_2

    .line 85
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, v0}, Lcom/etermax/adsinterface/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    const-string v0, "tablet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x78

    if-lt v1, v2, :cond_3

    .line 93
    const-string v0, "ldpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/etermax/adsinterface/a/f;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, v1}, Lcom/etermax/adsinterface/a/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    const-string v0, "tablet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_4
    if-nez v0, :cond_5

    .line 99
    const-string v0, "mdpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_5
    const-string v1, "\\{lang\\}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0

    .line 88
    :cond_6
    const-string v0, "mdpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/etermax/adsinterface/a/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/f;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    .line 118
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 119
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/etermax/adsinterface/a/f$1;

    invoke-direct {v1, p0, p2}, Lcom/etermax/adsinterface/a/f$1;-><init>(Lcom/etermax/adsinterface/a/f;Lcom/etermax/adsinterface/a/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 134
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic b(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/a;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->a:Lcom/etermax/adsinterface/a/a;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/etermax/tools/d/h;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/f;->b:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "admobcustom"

    invoke-direct {v0, v1, v2}, Lcom/etermax/tools/d/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/etermax/tools/d/h;->f:Z

    .line 110
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, v0, Lcom/etermax/tools/d/h;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etermax/tools/d/h;->i:Z

    .line 112
    iget-object v1, p0, Lcom/etermax/adsinterface/a/f;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/etermax/tools/d/g;->a(Landroid/support/v4/app/FragmentManager;Lcom/etermax/tools/d/h;)Lcom/etermax/tools/d/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/f;->c:Lcom/etermax/tools/d/g;

    .line 113
    return-void
.end method

.method static synthetic c(Lcom/etermax/adsinterface/a/f;)Lcom/etermax/tools/d/g;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->c:Lcom/etermax/tools/d/g;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/adsinterface/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/adsinterface/a/f;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->e:Lcom/etermax/adsinterface/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->e:Lcom/etermax/adsinterface/a/g;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/g;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->e:Lcom/etermax/adsinterface/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/adsinterface/a/g;->cancel(Z)Z

    .line 265
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomAdsContentLoader - cancel image fetcher - this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 270
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomAdsContentLoader - stop loading web - this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    return-void
.end method

.method public a(Lcom/etermax/adsinterface/a/h;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->a:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->e()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomAdsContentLoader - loadContent - this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f;->a:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/etermax/adsinterface/a/f;->a:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v1}, Lcom/etermax/adsinterface/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/etermax/adsinterface/a/f;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No valid links received"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/etermax/adsinterface/a/h;->contentLoadFailed(Ljava/lang/Exception;)V

    .line 62
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/etermax/adsinterface/a/f;->a:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v2}, Lcom/etermax/adsinterface/a/a;->f()Lcom/etermax/adsinterface/a/b;

    move-result-object v2

    sget-object v3, Lcom/etermax/adsinterface/a/b;->b:Lcom/etermax/adsinterface/a/b;

    if-ne v2, v3, :cond_1

    .line 52
    new-instance v2, Lcom/etermax/adsinterface/a/g;

    invoke-direct {v2, p0, p1}, Lcom/etermax/adsinterface/a/g;-><init>(Lcom/etermax/adsinterface/a/f;Lcom/etermax/adsinterface/a/h;)V

    iput-object v2, p0, Lcom/etermax/adsinterface/a/f;->e:Lcom/etermax/adsinterface/a/g;

    .line 53
    iget-object v2, p0, Lcom/etermax/adsinterface/a/f;->a:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v2}, Lcom/etermax/adsinterface/a/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/etermax/adsinterface/a/f;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v2, p0, Lcom/etermax/adsinterface/a/f;->e:Lcom/etermax/adsinterface/a/g;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/etermax/adsinterface/a/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/etermax/adsinterface/a/f;->a(Ljava/lang/String;Lcom/etermax/adsinterface/a/h;)V

    goto :goto_0

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No content links received"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/etermax/adsinterface/a/h;->contentLoadFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 276
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    move v3, v1

    .line 277
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 275
    goto :goto_0

    :cond_3
    move v3, v2

    .line 276
    goto :goto_1
.end method
