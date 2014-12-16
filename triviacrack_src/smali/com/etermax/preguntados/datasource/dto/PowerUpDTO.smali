.class public Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cost:I

.field private name:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->cost:I

    return v0
.end method

.method public getName()Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->name:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    return-object v0
.end method
