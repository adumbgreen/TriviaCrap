.class public final Lcom/etermax/preguntados/ui/shop/ShopActivity_;
.super Lcom/etermax/preguntados/ui/shop/ShopActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final e:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/shop/ShopActivity;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->e:Lorg/a/a/b/c;

    .line 97
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->b()V

    .line 41
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->d:Lcom/etermax/tools/f/a;

    .line 42
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->c:Lcom/etermax/gamescommon/shop/c;

    .line 43
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->a:I

    .line 85
    :cond_0
    const-string v1, "mFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "mFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->b:Ljava/lang/String;

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->onBackPressed()V

    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->setContentView(I)V

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 49
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->setContentView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 61
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 55
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->setIntent(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/shop/ShopActivity_;->b()V

    .line 95
    return-void
.end method
