.class public Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:J

.field private items:[Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;

.field private sender:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field private state:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->id:J

    return-wide v0
.end method

.method public getItems()[Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->items:[Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;

    return-object v0
.end method

.method public getSender()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->sender:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public getState()Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->state:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    return-object v0
.end method

.method public setState(Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->state:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    .line 47
    return-void
.end method
