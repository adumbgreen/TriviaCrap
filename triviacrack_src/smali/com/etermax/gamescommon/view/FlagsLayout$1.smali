.class Lcom/etermax/gamescommon/view/FlagsLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/view/FlagsLayout;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/view/FlagsLayout;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/view/FlagsLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    iget-object v0, v0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    iget-object v0, v0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/view/d;->c()V

    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    new-instance v1, Lcom/etermax/gamescommon/view/d;

    iget-object v2, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-static {v2}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(Lcom/etermax/gamescommon/view/FlagsLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    iget-object v4, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-static {v4}, Lcom/etermax/gamescommon/view/FlagsLayout;->b(Lcom/etermax/gamescommon/view/FlagsLayout;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/etermax/gamescommon/view/d;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/etermax/gamescommon/view/FlagsLayout;Ljava/util/List;)V

    iput-object v1, v0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    .line 103
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout$1;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    iget-object v0, v0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/view/d;->b()V

    .line 105
    return-void
.end method
