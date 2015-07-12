.class public Lcom/etermax/preguntados/ui/newgame/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/g;->a:Landroid/os/Bundle;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/f$1;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/a/a;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/f;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/newgame/a/f;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/a/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/newgame/a/f;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/ui/newgame/a/g;
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/g;->a:Landroid/os/Bundle;

    const-string v1, "mLanguage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    return-object p0
.end method
