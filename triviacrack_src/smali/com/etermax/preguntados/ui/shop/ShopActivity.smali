.class public Lcom/etermax/preguntados/ui/shop/ShopActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/shop/b;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lcom/etermax/gamescommon/shop/c;

.field d:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/shop/ShopActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mFrom"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/etermax/preguntados/a/i;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/i;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/i;->a(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity;->a:I

    invoke-static {v0}, Lcom/etermax/preguntados/ui/shop/a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public h_()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->finish()V

    .line 58
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity;->c:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/gamescommon/shop/c;->a(IILandroid/content/Intent;)V

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity;->c:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 42
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/ShopActivity;->c:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 48
    return-void
.end method
