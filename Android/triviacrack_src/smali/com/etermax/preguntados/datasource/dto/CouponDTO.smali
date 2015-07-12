.class public Lcom/etermax/preguntados/datasource/dto/CouponDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private campaign_name:Ljava/lang/String;

.field private code_response:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

.field private current_seriated_code:I

.field private reward_quantity:I

.field private reward_type:Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

.field private total_seriated_codes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->campaign_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeResponse()Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->code_response:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    return-object v0
.end method

.method public getCurrentSeriatedCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->current_seriated_code:I

    return v0
.end method

.method public getRewardQuantity()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->reward_quantity:I

    return v0
.end method

.method public getRewardType()Lcom/etermax/preguntados/datasource/dto/enums/RewardType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->reward_type:Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    return-object v0
.end method

.method public getTotalSeriatedCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->total_seriated_codes:I

    return v0
.end method
