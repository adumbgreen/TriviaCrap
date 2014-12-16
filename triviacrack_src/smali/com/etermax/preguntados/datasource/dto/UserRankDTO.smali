.class public Lcom/etermax/preguntados/datasource/dto/UserRankDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private is_me:Z

.field private position:I

.field private score:I

.field private user:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->position:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->score:I

    return v0
.end method

.method public getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->user:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public isMe()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->is_me:Z

    return v0
.end method
