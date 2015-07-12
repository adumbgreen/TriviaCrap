.class public Lcom/etermax/gamescommon/login/ui/u;
.super Lcom/etermax/tools/widget/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# instance fields
.field a:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/login/ui/u;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 29
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/u;
    .locals 5
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "suggest_update_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/u;

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/etermax/gamescommon/login/ui/v;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/v;-><init>()V

    .line 36
    sget v1, Lcom/etermax/o;->notification_forced_update:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    sget v2, Lcom/etermax/o;->notification_forced_update_txt:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    sget v3, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->later:I

    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/login/ui/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/u;->setCancelable(Z)V

    .line 41
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/etermax/gamescommon/login/ui/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/u;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/etermax/gamescommon/b/as;

    sget-object v1, Lcom/etermax/gamescommon/b/at;->b:Lcom/etermax/gamescommon/b/at;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/as;-><init>(Lcom/etermax/gamescommon/b/at;)V

    .line 82
    invoke-virtual {v0}, Lcom/etermax/gamescommon/b/as;->d()V

    .line 83
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/u;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 84
    return-void
.end method

.method public b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/u;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "suggest_update_tag"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/login/ui/u;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "SuggestUpdateDialogFragment"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 70
    instance-of v1, v0, Lcom/etermax/tools/i/e;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Lcom/etermax/gamescommon/login/ui/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/b;->f()V

    .line 74
    :cond_0
    new-instance v0, Lcom/etermax/gamescommon/b/as;

    sget-object v1, Lcom/etermax/gamescommon/b/at;->b:Lcom/etermax/gamescommon/b/at;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/as;-><init>(Lcom/etermax/gamescommon/b/at;)V

    .line 75
    invoke-virtual {v0}, Lcom/etermax/gamescommon/b/as;->c()V

    .line 76
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/u;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 77
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/etermax/gamescommon/b/as;

    sget-object v1, Lcom/etermax/gamescommon/b/at;->a:Lcom/etermax/gamescommon/b/at;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/as;-><init>(Lcom/etermax/gamescommon/b/at;)V

    .line 47
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/as;->a(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/u;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 49
    invoke-super {p0}, Lcom/etermax/tools/widget/b/a;->onStart()V

    .line 50
    return-void
.end method
