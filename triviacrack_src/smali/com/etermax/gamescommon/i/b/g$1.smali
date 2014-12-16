.class Lcom/etermax/gamescommon/i/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/g$1;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$1;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->a(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->a(I)V

    .line 104
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$1;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->b(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/h;->l_()V

    .line 105
    return-void
.end method
