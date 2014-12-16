.class public final enum Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

.field public static final enum admob:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

.field public static final enum disabled:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

.field public static final enum mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v1, "admob"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->admob:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    .line 93
    new-instance v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v1, "mopub"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    .line 94
    new-instance v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v1, "disabled"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->disabled:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    sget-object v1, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->admob:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->disabled:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->$VALUES:[Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;
    .locals 1
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->$VALUES:[Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    return-object v0
.end method
