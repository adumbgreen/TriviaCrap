.class Lcom/etermax/gamescommon/social/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/social/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/e;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/e;->f:Lcom/etermax/gamescommon/social/a;

    iget-object v2, p0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/etermax/gamescommon/social/e$1$1;

    invoke-direct {v3, p0, v0}, Lcom/etermax/gamescommon/social/e$1$1;-><init>(Lcom/etermax/gamescommon/social/e$1;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 106
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->dismiss()V

    .line 108
    :cond_0
    return-void
.end method
