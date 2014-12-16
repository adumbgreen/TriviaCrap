.class public Lcom/etermax/gamescommon/i/b/k;
.super Lcom/etermax/tools/widget/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# static fields
.field protected static b:Z


# instance fields
.field a:Lcom/etermax/gamescommon/i/b/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/i/b/k;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 459
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/i/b/h;Z)Lcom/etermax/gamescommon/i/b/k;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    sput-boolean p2, Lcom/etermax/gamescommon/i/b/k;->b:Z

    .line 463
    new-instance v6, Lcom/etermax/gamescommon/i/b/k;

    invoke-direct {v6}, Lcom/etermax/gamescommon/i/b/k;-><init>()V

    .line 464
    sget v0, Lcom/etermax/o;->logging_out:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->dialog_logout:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/etermax/gamescommon/i/b/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 466
    invoke-virtual {v6, v0}, Lcom/etermax/gamescommon/i/b/k;->setArguments(Landroid/os/Bundle;)V

    .line 467
    invoke-virtual {v6, p1}, Lcom/etermax/gamescommon/i/b/k;->a(Lcom/etermax/gamescommon/i/b/h;)V

    .line 468
    return-object v6
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/k;->a:Lcom/etermax/gamescommon/i/b/h;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->a(I)V

    .line 488
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    const-string v0, "logout_dialog"

    invoke-super {p0, p1, v0}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/i/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/k;->a:Lcom/etermax/gamescommon/i/b/h;

    .line 473
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 492
    sget-boolean v0, Lcom/etermax/gamescommon/i/b/k;->b:Z

    if-eqz v0, :cond_0

    .line 493
    sget v0, Lcom/etermax/k;->etermaxtools_accept_cancel_dialog_red_green:I

    .line 495
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/widget/b/a;->b()I

    move-result v0

    goto :goto_0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/k;->a:Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/h;->c()V

    .line 482
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/k;->a:Lcom/etermax/gamescommon/i/b/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->a(I)V

    .line 483
    return-void
.end method
