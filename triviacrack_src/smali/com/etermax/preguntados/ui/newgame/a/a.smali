.class public Lcom/etermax/preguntados/ui/newgame/a/a;
.super Lcom/etermax/gamescommon/h/a/a;
.source "SourceFile"


# instance fields
.field h:Lcom/etermax/preguntados/datasource/d;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/EditText;

.field private k:Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/etermax/gamescommon/h/a/a;-><init>()V

    .line 244
    return-void
.end method

.method public static a(Lcom/etermax/gamescommon/language/Language;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {}, Lcom/etermax/preguntados/ui/newgame/a/f;->j()Lcom/etermax/preguntados/ui/newgame/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/a/g;->a(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/ui/newgame/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/a/g;->a()Lcom/etermax/preguntados/ui/newgame/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/h/a/c;)Lcom/etermax/gamescommon/user/a/a;
    .locals 1
    .parameter

    .prologue
    .line 284
    new-instance v0, Lcom/etermax/gamescommon/h/a/h;

    invoke-direct {v0, p1}, Lcom/etermax/gamescommon/h/a/h;-><init>(Lcom/etermax/gamescommon/h/a/f;)V

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/h/a/d;)Lcom/etermax/gamescommon/user/a/a;
    .locals 1
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/etermax/gamescommon/h/a/h;

    invoke-direct {v0, p1}, Lcom/etermax/gamescommon/h/a/h;-><init>(Lcom/etermax/gamescommon/h/a/f;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/a$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/newgame/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/newgame/a/a$2;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/a/a$2;->a(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method protected c()Lcom/etermax/gamescommon/h/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->k:Lcom/etermax/gamescommon/h/a/g;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/newgame/a/d;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/ui/newgame/a/a$1;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->k:Lcom/etermax/gamescommon/h/a/g;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->k:Lcom/etermax/gamescommon/h/a/g;

    return-object v0
.end method

.method protected d()Lcom/etermax/gamescommon/h/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->l:Lcom/etermax/gamescommon/h/a/g;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/newgame/a/c;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/ui/newgame/a/a$1;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->l:Lcom/etermax/gamescommon/h/a/g;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->l:Lcom/etermax/gamescommon/h/a/g;

    return-object v0
.end method

.method protected e()Lcom/etermax/gamescommon/h/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->m:Lcom/etermax/gamescommon/h/a/g;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/newgame/a/e;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/ui/newgame/a/a$1;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->m:Lcom/etermax/gamescommon/h/a/g;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->m:Lcom/etermax/gamescommon/h/a/g;

    return-object v0
.end method

.method protected f()Lcom/etermax/gamescommon/h/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->n:Lcom/etermax/gamescommon/h/a/g;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/newgame/a/b;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/ui/newgame/a/a$1;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->n:Lcom/etermax/gamescommon/h/a/g;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->n:Lcom/etermax/gamescommon/h/a/g;

    return-object v0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/a$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/newgame/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/newgame/a/a$1;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/a/a$1;->a(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a;->i:Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->friend_plural:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method
