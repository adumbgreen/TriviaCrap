.class Lcom/etermax/preguntados/ui/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/a/a;->a(Ljava/util/List;IJ)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/etermax/preguntados/ui/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/a/a;Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/etermax/preguntados/ui/a/a$1;->d:Lcom/etermax/preguntados/ui/a/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/a/a$1;->a:Ljava/util/List;

    iput p3, p0, Lcom/etermax/preguntados/ui/a/a$1;->b:I

    iput p4, p0, Lcom/etermax/preguntados/ui/a/a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/a/a$1;->a:Ljava/util/List;

    iget v1, p0, Lcom/etermax/preguntados/ui/a/a$1;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/a/a$1;->d:Lcom/etermax/preguntados/ui/a/a;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/a/a;->a:Landroid/content/Context;

    iget v2, p0, Lcom/etermax/preguntados/ui/a/a$1;->c:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    return-void
.end method
