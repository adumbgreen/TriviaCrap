.class public Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private account_type:Ljava/lang/String;

.field private courier_service_type:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private installation_id:Ljava/lang/String;

.field private notification_id:Ljava/lang/String;

.field private old_installation_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->device:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->installation_id:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->old_installation_id:Ljava/lang/String;

    .line 17
    const-string v0, "GCM"

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->courier_service_type:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getInstallation_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->installation_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount_type(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->account_type:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setNotification_id(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->notification_id:Ljava/lang/String;

    .line 50
    return-void
.end method
