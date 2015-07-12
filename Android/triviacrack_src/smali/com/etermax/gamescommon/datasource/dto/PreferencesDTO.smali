.class public Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ALLOW_OG_POSTS:Ljava/lang/String;

.field FAVORITES_ONLY:Ljava/lang/String;

.field FB_SHOW_NAME:Ljava/lang/String;

.field FB_SHOW_PICTURE:Ljava/lang/String;

.field MAIL_NEWS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private booleanToString(Z)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public allowOGPosts()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->ALLOW_OG_POSTS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isFBShowName()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->FB_SHOW_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isFBShowPicture()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->FB_SHOW_PICTURE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isFavoritesOnly()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->FAVORITES_ONLY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isMailNews()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->MAIL_NEWS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setAllowOGPosts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->booleanToString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->ALLOW_OG_POSTS:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setFBShowName(Z)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->booleanToString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->FB_SHOW_NAME:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setFBShowPicture(Z)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->booleanToString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->FB_SHOW_PICTURE:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setFavoritesOnly(Z)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->booleanToString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->FAVORITES_ONLY:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setMailNews(Z)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->booleanToString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->MAIL_NEWS:Ljava/lang/String;

    .line 21
    return-void
.end method
