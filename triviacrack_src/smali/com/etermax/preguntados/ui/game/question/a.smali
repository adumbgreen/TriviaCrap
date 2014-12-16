.class Lcom/etermax/preguntados/ui/game/question/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/c;


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

.field private b:Lcom/etermax/preguntados/datasource/dto/GameDTO;


# direct methods
.method private constructor <init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/a;->a:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/a;-><init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 372
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/a;->a:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 361
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/a;->a:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 368
    :cond_0
    return-void
.end method
