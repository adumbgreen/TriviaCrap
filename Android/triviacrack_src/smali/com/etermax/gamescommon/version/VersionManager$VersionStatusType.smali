.class public final enum Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

.field public static final enum FORCE:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

.field public static final enum OK:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

.field public static final enum SUGGEST:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->OK:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    new-instance v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    const-string v1, "FORCE"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->FORCE:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    new-instance v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    const-string v1, "SUGGEST"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->SUGGEST:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    sget-object v1, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->OK:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->FORCE:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->SUGGEST:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->$VALUES:[Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->$VALUES:[Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    return-object v0
.end method
