.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;->b()V

    .line 556
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    return-void
.end method
