.class public final enum Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

.field public static final enum ALL:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

.field public static final enum NOT_OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

.field public static final enum OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

.field public static final enum PENDING:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    const-string v1, "OBTAINED"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    const-string v1, "NOT_OBTAINED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->NOT_OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->PENDING:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->ALL:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->NOT_OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->PENDING:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->ALL:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    return-object v0
.end method
