.class synthetic Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 390
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->values()[Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->b:[I

    :try_start_0
    sget-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    .line 313
    :goto_3
    invoke-static {}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->values()[Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->a:[I

    :try_start_4
    sget-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->a:[I

    sget-object v1, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->admob:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->a:[I

    sget-object v1, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    .line 390
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
