.class Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$3;->b:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$3;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$3;->b:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$3;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 314
    return-void
.end method
