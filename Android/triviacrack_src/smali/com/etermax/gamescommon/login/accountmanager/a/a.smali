.class public Lcom/etermax/gamescommon/login/accountmanager/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/login/accountmanager/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etermax/gamescommon/login/accountmanager/a/a;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    if-eqz p12, :cond_2

    .line 234
    invoke-virtual/range {p12 .. p12}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 237
    :goto_0
    const/4 v1, 0x0

    .line 238
    if-eqz p14, :cond_0

    .line 239
    invoke-virtual/range {p14 .. p14}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v1

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 243
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_cookie_key"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_user_id_key"

    invoke-interface {v4, v5, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_email_key"

    invoke-interface {v4, v5, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_username_key"

    invoke-interface {v4, v5, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_has_pass_key"

    invoke-interface {v4, v5, p6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_photo_url_key"

    invoke-interface {v4, v5, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_facebook_name_key"

    invoke-interface {v4, v5, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_facebook_id_key"

    invoke-interface {v4, v5, p8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_facebook_show_name_key"

    move/from16 v0, p10

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_facebook_show_picture_key"

    move/from16 v0, p11

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "angrygames_gender_key"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "angrygames_nationality_key"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    if-eqz p13, :cond_1

    .line 257
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "angrygames_birthdate_key"

    invoke-virtual/range {p13 .. p13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    :goto_1
    return-void

    .line 259
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "angrygames_birthdate_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto/16 :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 265
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/etermax/gamescommon/login/accountmanager/a/a;->a:Landroid/content/Context;

    const-string v1, "angrygames_credential_preferences_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 33
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move v10, v6

    move v11, v6

    move-object v12, v1

    move-object v13, v1

    move-object v14, v1

    invoke-direct/range {v0 .. v14}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 34
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_user_id_key"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_gender_key"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public a(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_nationality_key"

    invoke-virtual {p1}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_cookie_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct/range {p0 .. p14}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 29
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 4
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_birthdate_key"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_has_pass_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "angrygames_installation_id_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_username_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_facebook_show_name_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "angrygames_cookie_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_facebook_id_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_facebook_show_picture_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public d()J
    .locals 4

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    const-string v1, "angrygames_user_id_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_facebook_name_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "angrygames_email_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_photo_url_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "angrygames_username_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_installation_id_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angrygames_email_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    const-string v1, "angrygames_has_pass_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "angrygames_photo_url_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "angrygames_facebook_id_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "angrygames_facebook_name_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    const-string v1, "angrygames_facebook_show_name_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    const-string v1, "angrygames_facebook_show_picture_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    const-string v1, "angrygames_gender_key"

    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    sget-object v2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    goto :goto_0

    .line 187
    :cond_2
    sget-object v2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    goto :goto_0
.end method

.method public n()Ljava/util/Date;
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 196
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    const-string v1, "angrygames_birthdate_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 198
    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public o()Lcom/etermax/tools/nationality/Nationality;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    const-string v1, "angrygames_nationality_key"

    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 213
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/etermax/tools/nationality/Nationality;->valueOf(Ljava/lang/String;)Lcom/etermax/tools/nationality/Nationality;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    const-string v1, "COUNTRY_NOT_FOUND"

    const-string v2, "Country not found"

    invoke-static {v1, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p()Z
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
