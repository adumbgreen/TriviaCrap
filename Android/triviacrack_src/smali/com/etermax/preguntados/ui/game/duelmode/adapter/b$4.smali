.class synthetic Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->values()[Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->b:[I

    :try_start_0
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ENDED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->EXPIRED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->PENDING:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    .line 95
    :goto_3
    invoke-static {}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->values()[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->a:[I

    :try_start_4
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->a:[I

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->COINS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->a:[I

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->EXTRA_SHOTS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->a:[I

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->LIVES:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->a:[I

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->LIVES_LIMIT:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 89
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
