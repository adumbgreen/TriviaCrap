.class Lcom/etermax/gamescommon/menu/a/b/i$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/b/i$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/b/i$2;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/b/i$2;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/b/i$2$1;->a:Lcom/etermax/gamescommon/menu/a/b/i$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/i$2$1;->a:Lcom/etermax/gamescommon/menu/a/b/i$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/b/i$2;->a:Lcom/etermax/gamescommon/menu/a/b/i;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/i;->getOptions()Landroid/view/View;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_0
    return-void
.end method
