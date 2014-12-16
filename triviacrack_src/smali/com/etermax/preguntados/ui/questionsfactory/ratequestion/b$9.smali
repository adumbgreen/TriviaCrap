.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->d(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$9;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$9;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    .line 423
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    return-void
.end method
