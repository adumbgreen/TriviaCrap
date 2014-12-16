.class public Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private autogenerate_username:Z

.field private birthdate:Ljava/util/Date;

.field private country:Lcom/etermax/tools/nationality/Nationality;

.field private email:Ljava/lang/String;

.field private gender:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

.field private guest:Z

.field private language:Ljava/lang/String;

.field private new_password:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private user_device:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

.field private username:Ljava/lang/String;

.field private validate_domain:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->email:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->email:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->user_device:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p3}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 36
    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->password:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public setAutogenerate_username(Z)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->autogenerate_username:Z

    .line 114
    return-void
.end method

.method public setBirthdate(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->birthdate:Ljava/util/Date;

    .line 138
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->email:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setGender(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->gender:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    .line 130
    return-void
.end method

.method public setGuest(Z)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->guest:Z

    .line 102
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->language:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setNationality(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->country:Lcom/etermax/tools/nationality/Nationality;

    .line 146
    return-void
.end method

.method public setNew_password(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->new_password:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->password:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUser_device(Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->user_device:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    .line 58
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->username:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setValidate_domain(Z)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->validate_domain:Z

    .line 122
    return-void
.end method
