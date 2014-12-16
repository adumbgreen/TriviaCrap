.class public Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private access_token:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private user:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;->network:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;->id:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;->access_token:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;->user:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    .line 26
    iput-object p5, p0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;->email:Ljava/lang/String;

    .line 27
    return-void
.end method
