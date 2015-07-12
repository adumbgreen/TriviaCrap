.class synthetic Lcom/etermax/gamescommon/version/VersionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/version/VersionManager;
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->values()[Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/gamescommon/version/VersionManager$1;->$SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType:[I

    :try_start_0
    sget-object v0, Lcom/etermax/gamescommon/version/VersionManager$1;->$SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType:[I

    sget-object v1, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->FORCE:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/etermax/gamescommon/version/VersionManager$1;->$SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType:[I

    sget-object v1, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->SUGGEST:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
