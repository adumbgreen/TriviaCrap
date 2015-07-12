.class Lcom/etermax/gamescommon/social/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/k;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/social/k;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/k;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/etermax/gamescommon/social/k$2;->a:Lcom/etermax/gamescommon/social/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    const-string v0, "TwitterActionsDialog"

    const-string v1, "follow click"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/etermax/gamescommon/social/k$2$1;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/k$2;->a:Lcom/etermax/gamescommon/social/k;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/social/k$2;->a:Lcom/etermax/gamescommon/social/k;

    iget-object v2, v2, Lcom/etermax/gamescommon/social/k;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/etermax/gamescommon/social/k$2$1;-><init>(Lcom/etermax/gamescommon/social/k$2;Ljava/lang/String;Lcom/etermax/tools/social/twitter/a;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/social/k$2;->a:Lcom/etermax/gamescommon/social/k;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/social/k$2$1;->a(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method
