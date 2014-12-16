.class public Lcom/etermax/preguntados/ui/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/d;->a:Landroid/os/Bundle;

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/d/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/d/a;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/etermax/preguntados/ui/d/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/d/c;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/c;->setArguments(Landroid/os/Bundle;)V

    .line 174
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/d/d;
    .locals 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/d;->a:Landroid/os/Bundle;

    const-string v1, "mTipType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/d/d;
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/d;->a:Landroid/os/Bundle;

    const-string v1, "mGame"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 184
    return-object p0
.end method

.method public b(I)Lcom/etermax/preguntados/ui/d/d;
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/d;->a:Landroid/os/Bundle;

    const-string v1, "mToTypeQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    return-object p0
.end method
