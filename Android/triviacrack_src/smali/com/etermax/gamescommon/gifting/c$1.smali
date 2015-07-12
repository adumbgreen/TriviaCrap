.class Lcom/etermax/gamescommon/gifting/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/c;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/c$1;->a:Lcom/etermax/gamescommon/gifting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$1;->a:Lcom/etermax/gamescommon/gifting/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/c;->d:Lcom/etermax/gamescommon/gifting/e;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$1;->a:Lcom/etermax/gamescommon/gifting/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/c;->d:Lcom/etermax/gamescommon/gifting/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/gifting/e;->a(Z)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$1;->a:Lcom/etermax/gamescommon/gifting/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/c;->dismiss()V

    .line 73
    return-void
.end method
