.class public Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private asks:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

.field private gifts:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getAsks()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->asks:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    return-object v0
.end method

.method public getGifts()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->gifts:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    return-object v0
.end method
