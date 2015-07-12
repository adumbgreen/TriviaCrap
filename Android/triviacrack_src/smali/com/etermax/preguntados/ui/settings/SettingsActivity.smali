.class public Lcom/etermax/preguntados/ui/settings/SettingsActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/i/b/h;


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/settings/SettingsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sget v1, Lcom/etermax/i;->btn_help:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/settings/a;->a(Ljava/util/ArrayList;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/SettingsActivity;->a:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/datasource/c;->a(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/settings/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/EtermaxGamesApplication;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/settings/AccountActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public onHelpSectionClicked(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 53
    sget v1, Lcom/etermax/i;->btn_help:I

    if-ne v0, v1, :cond_0

    .line 54
    invoke-static {p0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    return-void
.end method
