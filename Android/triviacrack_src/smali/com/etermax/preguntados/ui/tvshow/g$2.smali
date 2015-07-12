.class Lcom/etermax/preguntados/ui/tvshow/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/tvshow/g;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/tvshow/g;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/g;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/g$2;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g$2;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/tvshow/g;->b(Lcom/etermax/preguntados/ui/tvshow/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/h;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/tvshow/h;->d()V

    .line 260
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    return-void
.end method
