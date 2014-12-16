.class public Lcom/etermax/preguntados/ui/game/duelmode/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/duelmode/a;->a:Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/a;->b:Landroid/content/Intent;

    .line 138
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/a;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/duelmode/a;
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/a;->b:Landroid/content/Intent;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/a;
    .locals 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/a;->b:Landroid/content/Intent;

    const-string v1, "mTheme"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    return-object p0
.end method
