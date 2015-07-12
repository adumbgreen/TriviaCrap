.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->t()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$10;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$10;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$10;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Landroid/view/View;)V

    .line 450
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    return-void
.end method
