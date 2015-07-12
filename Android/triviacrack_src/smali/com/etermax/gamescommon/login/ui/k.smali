.class public Lcom/etermax/gamescommon/login/ui/k;
.super Lcom/etermax/tools/widget/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/d;


# instance fields
.field a:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/login/ui/k;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 31
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/k;
    .locals 4
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "force_update_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/k;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/etermax/gamescommon/login/ui/l;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/l;-><init>()V

    .line 74
    sget v1, Lcom/etermax/o;->notification_forced_update:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    sget v2, Lcom/etermax/o;->notification_forced_update_txt:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    sget v3, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/login/ui/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/k;->setCancelable(Z)V

    .line 79
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/etermax/gamescommon/login/ui/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/k;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method


# virtual methods
.method public b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/k;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "force_update_tag"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/login/ui/k;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
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
    .line 44
    new-instance v0, Lcom/etermax/gamescommon/b/s;

    sget-object v1, Lcom/etermax/gamescommon/b/t;->b:Lcom/etermax/gamescommon/b/t;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/s;-><init>(Lcom/etermax/gamescommon/b/t;)V

    .line 45
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/s;->a(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/k;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 48
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 49
    instance-of v1, v0, Lcom/etermax/tools/i/e;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Lcom/etermax/gamescommon/login/ui/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/b;->f()V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 53
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 67
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/c;->onCancel(Landroid/content/DialogInterface;)V

    .line 68
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/login/ui/k;->onCancel(Landroid/content/DialogInterface;)V

    .line 60
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/b/c;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/etermax/gamescommon/b/s;

    sget-object v1, Lcom/etermax/gamescommon/b/t;->a:Lcom/etermax/gamescommon/b/t;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/s;-><init>(Lcom/etermax/gamescommon/b/t;)V

    .line 36
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/s;->a(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/k;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 38
    invoke-super {p0}, Lcom/etermax/tools/widget/b/c;->onStart()V

    .line 39
    return-void
.end method
