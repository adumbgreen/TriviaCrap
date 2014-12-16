.class Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/widget/g$1;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/widget/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$1;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->f(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$1;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->e(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$1;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$1;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method
