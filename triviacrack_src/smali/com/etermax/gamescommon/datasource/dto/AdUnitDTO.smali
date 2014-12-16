.class public Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private mediator:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->mediator:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    .line 17
    iput-object p3, p0, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->id:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->mediator:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->name:Ljava/lang/String;

    return-object v0
.end method
