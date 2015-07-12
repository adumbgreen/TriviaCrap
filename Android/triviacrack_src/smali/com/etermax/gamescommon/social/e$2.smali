.class Lcom/etermax/gamescommon/social/e$2;
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
    .line 114
    iput-object p1, p0, Lcom/etermax/gamescommon/social/e$2;->a:Lcom/etermax/gamescommon/social/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$2;->a:Lcom/etermax/gamescommon/social/e;

    invoke-static {v0}, Lcom/etermax/gamescommon/social/e;->b(Lcom/etermax/gamescommon/social/e;)V

    .line 117
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$2;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$2;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/social/a/d;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$2;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$2;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->dismiss()V

    .line 122
    return-void
.end method
