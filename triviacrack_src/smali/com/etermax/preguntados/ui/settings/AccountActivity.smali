.class public Lcom/etermax/preguntados/ui/settings/AccountActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/i/b/b;


# instance fields
.field a:Lcom/etermax/gamescommon/i/b/a;

.field b:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/settings/AccountActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/etermax/gamescommon/i/b/f;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/AccountActivity;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 36
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    instance-of v0, p1, Lcom/etermax/gamescommon/i/b/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/etermax/gamescommon/i/b/a;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/settings/AccountActivity;->a:Lcom/etermax/gamescommon/i/b/a;

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 43
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/AccountActivity;->a:Lcom/etermax/gamescommon/i/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/AccountActivity;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/AccountActivity;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/a;->f()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
