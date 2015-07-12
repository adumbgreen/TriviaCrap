.class Lcom/etermax/gamescommon/i/b/g$3;
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
    .line 170
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/g$3;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$3;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->c(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/i/b/h;->onHelpSectionClicked(Landroid/view/View;)V

    .line 174
    return-void
.end method
