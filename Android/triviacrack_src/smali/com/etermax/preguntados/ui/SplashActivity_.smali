.class public final Lcom/etermax/preguntados/ui/SplashActivity_;
.super Lcom/etermax/preguntados/ui/SplashActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final f:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/SplashActivity;-><init>()V

    .line 31
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->f:Lorg/a/a/b/c;

    .line 106
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 43
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->c:Lcom/etermax/tools/f/a;

    .line 44
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->d:Lcom/etermax/gamescommon/shop/c;

    .line 45
    invoke-static {p0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->e:Lcom/etermax/preguntados/g/a;

    .line 46
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/SplashActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0}, Lcom/etermax/preguntados/ui/SplashActivity;->d()V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/SplashActivity_;->b()V

    .line 86
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcom/etermax/preguntados/ui/SplashActivity_$1;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/etermax/preguntados/ui/SplashActivity_$1;-><init>(Lcom/etermax/preguntados/ui/SplashActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/SplashActivity_;->a(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/SplashActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 39
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/SplashActivity_;->onBackPressed()V

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/SplashActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/SplashActivity;->setContentView(I)V

    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 53
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/SplashActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 59
    return-void
.end method
