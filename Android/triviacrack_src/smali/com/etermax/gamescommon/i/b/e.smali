.class public Lcom/etermax/gamescommon/i/b/e;
.super Lcom/etermax/tools/widget/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# static fields
.field private static a:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/i/b/e;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 599
    return-void
.end method

.method public static a(Lcom/etermax/gamescommon/i/b/a;)Lcom/etermax/gamescommon/i/b/e;
    .locals 5
    .parameter

    .prologue
    .line 602
    new-instance v0, Lcom/etermax/gamescommon/i/b/e;

    invoke-direct {v0}, Lcom/etermax/gamescommon/i/b/e;-><init>()V

    .line 603
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 604
    sget v2, Lcom/etermax/o;->are_you_sure_save:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/etermax/gamescommon/i/b/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/e;->setArguments(Landroid/os/Bundle;)V

    .line 605
    sput-object p0, Lcom/etermax/gamescommon/i/b/e;->a:Lcom/etermax/gamescommon/i/b/a;

    .line 606
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 626
    sget-object v0, Lcom/etermax/gamescommon/i/b/e;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->w(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/b;->a(I)V

    .line 627
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 628
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 617
    sget-object v0, Lcom/etermax/gamescommon/i/b/e;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->v(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/b;->a(I)V

    .line 618
    sget-object v0, Lcom/etermax/gamescommon/i/b/e;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->b(Lcom/etermax/gamescommon/i/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    sget-object v0, Lcom/etermax/gamescommon/i/b/e;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->b(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 620
    sget-object v0, Lcom/etermax/gamescommon/i/b/e;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->c(Lcom/etermax/gamescommon/i/b/a;)V

    .line 622
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/i/b/e;->a:Lcom/etermax/gamescommon/i/b/a;

    .line 612
    invoke-super {p0}, Lcom/etermax/tools/widget/b/a;->onDestroy()V

    .line 613
    return-void
.end method
