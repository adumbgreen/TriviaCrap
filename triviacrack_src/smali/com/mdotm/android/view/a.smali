.class public Lcom/mdotm/android/view/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/mdotm/android/c/c;

.field private c:Lcom/mdotm/android/d/b;

.field private d:Landroid/widget/ProgressBar;

.field private e:Z

.field private f:Landroid/webkit/WebView;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x28

    const/16 v5, 0xd

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/a;->f:Landroid/webkit/WebView;

    .line 45
    const-string v0, "html resource HtmlView"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/a;->a:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/mdotm/android/view/a;->b:Lcom/mdotm/android/c/c;

    .line 48
    iput-object p2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    .line 49
    invoke-direct {p0}, Lcom/mdotm/android/view/a;->getHeightAndWidth()V

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 51
    invoke-direct {p0, p4}, Lcom/mdotm/android/view/a;->b(I)I

    move-result v1

    invoke-direct {p0, p4}, Lcom/mdotm/android/view/a;->a(I)I

    move-result v2

    .line 50
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    if-ne v3, p4, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/mdotm/android/view/a;->d()V

    .line 64
    :cond_0
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/a;->setGravity(I)V

    .line 68
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mdotm/android/view/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    .line 69
    iget-object v0, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    iget-object v1, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v1, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 74
    iget-object v1, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 75
    iget-object v1, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 76
    iget-object v1, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/a;->addView(Landroid/view/View;)V

    .line 81
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/a;->f:Landroid/webkit/WebView;

    .line 82
    iget-object v0, p0, Lcom/mdotm/android/view/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/mdotm/android/view/a;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/mdotm/android/view/a$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/a$1;-><init>(Lcom/mdotm/android/view/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 163
    invoke-direct {p0, p1, p4}, Lcom/mdotm/android/view/a;->a(Landroid/content/Context;I)V

    .line 164
    return-void

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    invoke-direct {p0}, Lcom/mdotm/android/view/a;->e()V

    .line 59
    const-string v1, "Normal interstitial"

    .line 58
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/mdotm/android/view/a;->f()V

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 291
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mod = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/mdotm/android/view/a;->h:I

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 v0, v0, 0x64

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->i()I

    move-result v0

    goto :goto_0

    .line 299
    :cond_1
    iget v0, p0, Lcom/mdotm/android/view/a;->h:I

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/a;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/mdotm/android/view/a;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mdotm/android/view/a;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 168
    new-instance v0, Lcom/mdotm/android/view/MdotMWebView;

    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    .line 169
    iget-object v2, p0, Lcom/mdotm/android/view/a;->b:Lcom/mdotm/android/c/c;

    .line 168
    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mdotm/android/view/MdotMWebView;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;I)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/a;->addView(Landroid/view/View;)V

    .line 174
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->h()I

    move-result v2

    iget-object v3, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v3}, Lcom/mdotm/android/d/b;->i()I

    move-result v3

    .line 175
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/a;->addView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/mdotm/android/view/a;->e:Z

    return v0
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 304
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 305
    iget v0, p0, Lcom/mdotm/android/view/a;->g:I

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 v0, v0, 0x64

    .line 307
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mdotm/android/view/a;->g:I

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "On ad network completed"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/a;->setAdSelectionInProgress(Z)V

    .line 199
    invoke-direct {p0}, Lcom/mdotm/android/view/a;->c()V

    .line 200
    return-void
.end method

.method static synthetic b(Lcom/mdotm/android/view/a;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/mdotm/android/view/a;->b()V

    return-void
.end method

.method private c(I)I
    .locals 2
    .parameter

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/mdotm/android/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 376
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 377
    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/mdotm/android/view/a$2;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/a$2;-><init>(Lcom/mdotm/android/view/a;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/a;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method static synthetic c(Lcom/mdotm/android/view/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/mdotm/android/view/a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/mdotm/android/view/a;)Lcom/mdotm/android/c/c;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mdotm/android/view/a;->b:Lcom/mdotm/android/c/c;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 314
    iget-object v0, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "before mod = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mod height = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mod width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    const-string v1, "width=\'\\d+\'"

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mdotm/android/view/a;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v1, "width:\\d+"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v4}, Lcom/mdotm/android/view/a;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    const-string v1, "height=\'\\d+\'"

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mdotm/android/view/a;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string v1, "height:\\d+"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, v4}, Lcom/mdotm/android/view/a;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->a(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mod = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method static synthetic e(Lcom/mdotm/android/view/a;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mdotm/android/view/a;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "first height = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mdotm/android/view/a;->getReducedHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string v1, "height=\'\\d+\'"

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mdotm/android/view/a;->getReducedHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mdotm/android/view/a;->getReducedHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string v1, "width=\'\\d+\'"

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mdotm/android/view/a;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, "width:\\d+"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    iget v3, p0, Lcom/mdotm/android/view/a;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->a(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mod = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "first height = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v3}, Lcom/mdotm/android/d/b;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 356
    const-string v1, "height=\'\\d+\'"

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v3}, Lcom/mdotm/android/d/b;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string v1, "height:\\d+"

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v3}, Lcom/mdotm/android/d/b;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 361
    const-string v1, "width=\'\\d+\'"

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v3}, Lcom/mdotm/android/d/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v1, "width:\\d+"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v3}, Lcom/mdotm/android/d/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->a(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mod = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/a;->c:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private getHeightAndWidth()V
    .locals 3

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/mdotm/android/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 381
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 383
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/mdotm/android/view/a;->g:I

    .line 385
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/a;->h:I

    .line 393
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 390
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/mdotm/android/view/a;->g:I

    .line 391
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/mdotm/android/view/a;->h:I

    goto :goto_0
.end method

.method private getReducedHeight()I
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dev height = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/view/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget v0, p0, Lcom/mdotm/android/view/a;->h:I

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/a;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setAdSelectionInProgress(Z)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/mdotm/android/view/a;->e:Z

    .line 188
    return-void
.end method
