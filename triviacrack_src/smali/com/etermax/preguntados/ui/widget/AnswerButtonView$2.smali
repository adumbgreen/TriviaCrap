.class Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/widget/AnswerButtonView;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->i(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Lcom/etermax/preguntados/ui/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->i(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Lcom/etermax/preguntados/ui/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/widget/a;->d()V

    .line 170
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->h(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)V

    .line 165
    return-void
.end method
