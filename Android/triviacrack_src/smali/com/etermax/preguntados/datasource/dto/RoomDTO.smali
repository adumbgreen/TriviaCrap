.class public Lcom/etermax/preguntados/datasource/dto/RoomDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private countdown:I

.field private game:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountdown()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->countdown:I

    return v0
.end method

.method public getGame()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->game:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->id:J

    return-wide v0
.end method
