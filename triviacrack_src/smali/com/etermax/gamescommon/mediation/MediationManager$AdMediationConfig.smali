.class public Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private mediator:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

.field final synthetic this$0:Lcom/etermax/gamescommon/mediation/MediationManager;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/mediation/MediationManager;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->this$0:Lcom/etermax/gamescommon/mediation/MediationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->mediator:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    .line 103
    iput-object p3, p0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->id:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->mediator:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    return-object v0
.end method
