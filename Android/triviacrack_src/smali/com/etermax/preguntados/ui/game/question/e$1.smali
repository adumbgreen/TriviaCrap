.class Lcom/etermax/preguntados/ui/game/question/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/e;->onTick(J)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/preguntados/ui/game/question/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/e$1;->b:Lcom/etermax/preguntados/ui/game/question/e;

    iput p2, p0, Lcom/etermax/preguntados/ui/game/question/e$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 831
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/a/c;->a(J)Landroid/view/animation/Animation;

    move-result-object v1

    .line 832
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e$1;->b:Lcom/etermax/preguntados/ui/game/question/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/e;->a(Lcom/etermax/preguntados/ui/game/question/e;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/e$1;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 833
    return-void
.end method
