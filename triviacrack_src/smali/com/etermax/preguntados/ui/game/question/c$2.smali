.class Lcom/etermax/preguntados/ui/game/question/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/c;->d()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/preguntados/ui/game/question/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/c;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/c$2;->b:Lcom/etermax/preguntados/ui/game/question/c;

    iput p2, p0, Lcom/etermax/preguntados/ui/game/question/c$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$2;->b:Lcom/etermax/preguntados/ui/game/question/c;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/c$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;Ljava/lang/Integer;)V

    .line 321
    return-void
.end method
