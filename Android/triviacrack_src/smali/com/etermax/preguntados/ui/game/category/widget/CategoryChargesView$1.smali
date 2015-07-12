.class Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->a(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->c(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->a(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;I)I

    .line 98
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->invalidate()V

    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->e(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->d(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->g(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)Lcom/etermax/preguntados/ui/game/category/widget/a;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;->a:Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->f(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/a;->a(I)V

    goto :goto_0
.end method
