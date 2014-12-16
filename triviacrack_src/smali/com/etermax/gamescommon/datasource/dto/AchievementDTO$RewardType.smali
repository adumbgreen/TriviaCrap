.class public final enum Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

.field public static final enum COINS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

.field public static final enum EXTRA_SHOTS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

.field public static final enum LIVES:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

.field public static final enum LIVES_LIMIT:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    const-string v1, "COINS"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->COINS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    const-string v1, "LIVES_LIMIT"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->LIVES_LIMIT:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    const-string v1, "LIVES"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->LIVES:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    const-string v1, "EXTRA_SHOTS"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->EXTRA_SHOTS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->COINS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->LIVES_LIMIT:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->LIVES:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->EXTRA_SHOTS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    return-object v0
.end method
