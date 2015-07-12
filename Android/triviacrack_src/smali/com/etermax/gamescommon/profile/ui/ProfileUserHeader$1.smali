.class Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/k;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)Lcom/etermax/gamescommon/profile/ui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)Lcom/etermax/gamescommon/profile/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/e;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 162
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)Lcom/etermax/gamescommon/profile/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-static {v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "big_picture_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/e;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method
