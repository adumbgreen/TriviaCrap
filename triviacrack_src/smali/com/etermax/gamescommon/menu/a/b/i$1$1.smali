.class Lcom/etermax/gamescommon/menu/a/b/i$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/b/i$1;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/b/i$1;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/b/i$1;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/b/i$1$1;->a:Lcom/etermax/gamescommon/menu/a/b/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/i$1$1;->a:Lcom/etermax/gamescommon/menu/a/b/i$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/b/i$1;->a:Lcom/etermax/gamescommon/menu/a/b/i;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/i;->getOptions()Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_0
    return-void
.end method
