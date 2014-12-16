.class Lcom/etermax/preguntados/ui/game/question/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/question/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/k;->a()Lcom/etermax/preguntados/ui/game/question/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/question/k;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/k;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/k$1;->a:Lcom/etermax/preguntados/ui/game/question/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "Ljava/lang/Integer;",
            "Lcom/etermax/preguntados/datasource/dto/enums/Vote;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method
