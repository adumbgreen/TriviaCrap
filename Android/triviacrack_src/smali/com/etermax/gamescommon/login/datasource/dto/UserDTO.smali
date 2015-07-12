.class public Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/dashboard/a/b/b;
.implements Lcom/etermax/gamescommon/dashboard/a/c/f;
.implements Lcom/etermax/gamescommon/j;
.implements Ljava/io/Serializable;


# instance fields
.field private email:Ljava/lang/String;

.field private facebook_id:Ljava/lang/String;

.field private facebook_name:Ljava/lang/String;

.field private fb_show_name:Z

.field private fb_show_picture:Z

.field private has_pass:Z

.field private id:Ljava/lang/Long;

.field private transient invitationStatus:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

.field private is_app_user:Z

.field private is_favorite:Z

.field private last_active_date:Ljava/util/Date;

.field private online_status:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->invitationStatus:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->invitationStatus:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    .line 58
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->id:Ljava/lang/Long;

    .line 59
    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirthdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_name:Ljava/lang/String;

    return-object v0
.end method

.method public getFb_show_name()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->fb_show_name:Z

    return v0
.end method

.method public getFb_show_picture()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->fb_show_picture:Z

    return v0
.end method

.method public getFriendsInCommon()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGender()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHas_pass()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->has_pass:Z

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getInvitationStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->invitationStatus:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    return-object v0
.end method

.method public getIsAppUser()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->is_app_user:Z

    return v0
.end method

.method public getIs_app_user()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->is_app_user:Z

    return v0
.end method

.method public getLanguageCode()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastActiveDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->last_active_date:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->fb_show_name:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_name:Ljava/lang/String;

    .line 190
    :goto_0
    return-object v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNationality()Lcom/etermax/tools/nationality/Nationality;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->online_status:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    return-object v0
.end method

.method public getOpponent()Lcom/etermax/gamescommon/k;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectionType()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->username:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->is_favorite:Z

    return v0
.end method

.method public isFbShowPicture()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->fb_show_picture:Z

    return v0
.end method

.method public isImageTileLeft()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public isRandomOpponent()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->email:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setFacebook_id(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_id:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setFacebook_name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->facebook_name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setFb_show_name(Z)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->fb_show_name:Z

    .line 131
    return-void
.end method

.method public setFb_show_picture(Z)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->fb_show_picture:Z

    .line 123
    return-void
.end method

.method public setHas_pass(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->has_pass:Z

    .line 67
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->id:Ljava/lang/Long;

    .line 99
    return-void
.end method

.method public setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->invitationStatus:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    .line 302
    return-void
.end method

.method public setIs_app_user(Z)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->is_app_user:Z

    .line 144
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->username:Ljava/lang/String;

    .line 91
    return-void
.end method
