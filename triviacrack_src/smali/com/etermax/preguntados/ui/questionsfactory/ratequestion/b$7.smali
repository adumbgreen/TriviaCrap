.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Landroid/view/View;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;->a:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Landroid/widget/Button;)V

    .line 363
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    return-void
.end method
