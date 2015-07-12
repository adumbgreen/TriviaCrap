.class Lcom/etermax/gamescommon/menu/a/b/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/menu/a/b/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/b/i;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/b/i$1;->a:Lcom/etermax/gamescommon/menu/a/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/i$1;->a:Lcom/etermax/gamescommon/menu/a/b/i;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/b/i$1$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/b/i$1$1;-><init>(Lcom/etermax/gamescommon/menu/a/b/i$1;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/b/i;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method
