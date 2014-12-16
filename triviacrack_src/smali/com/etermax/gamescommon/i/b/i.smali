.class public Lcom/etermax/gamescommon/i/b/i;
.super Lcom/etermax/tools/widget/b/g;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/h;


# instance fields
.field a:Lcom/etermax/gamescommon/i/b/h;

.field private b:Lcom/etermax/gamescommon/login/datasource/a;

.field private c:Lcom/etermax/gamescommon/login/datasource/c;

.field private d:Lcom/etermax/tools/social/a/b;

.field private e:Lcom/etermax/tools/f/a;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/g;-><init>()V

    .line 513
    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/i/b/i;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 514
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/i;->d:Lcom/etermax/tools/social/a/b;

    .line 515
    iput-object p2, p0, Lcom/etermax/gamescommon/i/b/i;->c:Lcom/etermax/gamescommon/login/datasource/c;

    .line 516
    iput-object p3, p0, Lcom/etermax/gamescommon/i/b/i;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 517
    iput-object p4, p0, Lcom/etermax/gamescommon/i/b/i;->e:Lcom/etermax/tools/f/a;

    .line 518
    iput-boolean v0, p0, Lcom/etermax/gamescommon/i/b/i;->f:Z

    .line 519
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/i/b/h;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;)Lcom/etermax/gamescommon/i/b/i;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    new-instance v7, Lcom/etermax/gamescommon/i/b/i;

    invoke-direct {v7, p2, p3, p4, p5}, Lcom/etermax/gamescommon/i/b/i;-><init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;)V

    .line 524
    sget v0, Lcom/etermax/o;->logging_out:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->dialog_logout:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->sign_up:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->facebook_link:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->logout:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/etermax/k;->guest_three_vertical_buttons_dialog:I

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/etermax/gamescommon/i/b/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 526
    invoke-virtual {v7, v0}, Lcom/etermax/gamescommon/i/b/i;->setArguments(Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {v7, p1}, Lcom/etermax/gamescommon/i/b/i;->a(Lcom/etermax/gamescommon/i/b/h;)V

    .line 528
    return-object v7
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/i;->e:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Lcom/etermax/gamescommon/b/aj;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/aj;-><init>()V

    .line 573
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/aj;->a(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/i;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/i/b/i;->f:Z

    .line 577
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/i;->a:Lcom/etermax/gamescommon/i/b/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->a(I)V

    .line 543
    const-string v0, "email_signup"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/i;->a(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/i;->a:Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/h;->l_()V

    .line 545
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter

    .prologue
    .line 536
    const-string v0, "logout_dialog"

    invoke-super {p0, p1, v0}, Lcom/etermax/tools/widget/b/g;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/i/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/i;->a:Lcom/etermax/gamescommon/i/b/h;

    .line 533
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    .line 550
    const-string v0, "link_with_facebook"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/i;->a(Ljava/lang/String;)V

    .line 551
    new-instance v0, Lcom/etermax/gamescommon/i/b/i$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/i/b/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/i;->d:Lcom/etermax/tools/social/a/b;

    iget-object v4, p0, Lcom/etermax/gamescommon/i/b/i;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v5, p0, Lcom/etermax/gamescommon/i/b/i;->b:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v6, p0, Lcom/etermax/gamescommon/i/b/i;->e:Lcom/etermax/tools/f/a;

    const-string v7, "logout"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/etermax/gamescommon/i/b/i$1;-><init>(Lcom/etermax/gamescommon/i/b/i;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/i/b/i$1;->a(Ljava/lang/Object;)Z

    .line 554
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/i;->a:Lcom/etermax/gamescommon/i/b/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->a(I)V

    .line 559
    const-string v0, "logout"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/i;->a(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/i;->a:Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/h;->c()V

    .line 561
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/g;->onDismiss(Landroid/content/DialogInterface;)V

    .line 566
    iget-boolean v0, p0, Lcom/etermax/gamescommon/i/b/i;->f:Z

    if-nez v0, :cond_0

    .line 567
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/i;->a(Ljava/lang/String;)V

    .line 568
    :cond_0
    return-void
.end method
