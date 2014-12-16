.class public Lcom/etermax/preguntados/datasource/dto/RewardDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private quantity:I

.field private type:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuantity()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->quantity:I

    return v0
.end method

.method public getType()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->type:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    return-object v0
.end method
