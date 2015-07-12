.class Lcom/etermax/preguntados/ui/game/question/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/k;->j()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/etermax/preguntados/ui/game/question/k;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/k;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/k$3;->b:Lcom/etermax/preguntados/ui/game/question/k;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/k$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k$3;->b:Lcom/etermax/preguntados/ui/game/question/k;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k$3;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/k;->a(Landroid/view/View;Z)V

    .line 296
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    return-void
.end method
