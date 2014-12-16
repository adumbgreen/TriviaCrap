.class Lcom/etermax/preguntados/ui/tvshow/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/tvshow/a;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/tvshow/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/a;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/a$2;->a:Lcom/etermax/preguntados/ui/tvshow/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a$2;->a:Lcom/etermax/preguntados/ui/tvshow/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/a;->i:Lcom/etermax/preguntados/ui/tvshow/c;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a$2;->a:Lcom/etermax/preguntados/ui/tvshow/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/a;->i:Lcom/etermax/preguntados/ui/tvshow/c;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/tvshow/c;->a()V

    .line 106
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method
