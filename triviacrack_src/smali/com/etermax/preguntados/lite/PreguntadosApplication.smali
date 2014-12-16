.class public Lcom/etermax/preguntados/lite/PreguntadosApplication;
.super Lcom/etermax/preguntados/BasePreguntadosApplication;
.source "SourceFile"


# instance fields
.field protected k:Lcom/etermax/preguntados/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "ANDROID"

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication;->k:Lcom/etermax/preguntados/b/a;

    invoke-static {}, Lcom/etermax/preguntados/b/d;->values()[Lcom/etermax/preguntados/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/b/a;->a([Lcom/etermax/preguntados/b/c;)V

    .line 22
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "market_google"

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
