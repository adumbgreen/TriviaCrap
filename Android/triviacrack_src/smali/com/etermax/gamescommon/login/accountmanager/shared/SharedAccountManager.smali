.class public Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/login/accountmanager/a;


# instance fields
.field private a:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->q()Landroid/accounts/Account;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "SHARED"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->q()Landroid/accounts/Account;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_0

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v2, v1, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    const-string v2, "SHARED"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v1, "com.etermax.games.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 300
    array-length v1, v0

    if-nez v1, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->q()Landroid/accounts/Account;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_user_id_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_cookie_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "SHARED"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    const-string v0, "angrygames_nationality_key"

    invoke-virtual {p1}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    const-string v0, "angrygames_cookie_key"

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 5
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
    if-nez p4, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->q()Landroid/accounts/Account;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_6

    .line 34
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_cookie_key"

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_user_id_key"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_username_key"

    invoke-virtual {v1, v0, v2, p5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_facebook_id_key"

    invoke-virtual {v1, v0, v2, p8}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_has_pass_key"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_photo_url_key"

    invoke-virtual {v1, v0, v2, p7}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_facebook_name_key"

    invoke-virtual {v1, v0, v2, p9}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_facebook_show_name_key"

    invoke-static {p10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_facebook_show_picture_key"

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-eqz p12, :cond_2

    .line 46
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_gender_key"

    invoke-virtual/range {p12 .. p12}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_1
    if-eqz p13, :cond_3

    .line 51
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_birthdate_key"

    invoke-virtual/range {p13 .. p13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_2
    if-eqz p14, :cond_4

    .line 56
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_nationality_key"

    invoke-virtual/range {p14 .. p14}, Lcom/etermax/tools/nationality/Nationality;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "SHARED"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_gender_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_birthdate_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v2, "angrygames_nationality_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a()V

    .line 69
    :cond_6
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.etermax.games.account"

    invoke-direct {v0, p4, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v2, "angrygames_cookie_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "angrygames_user_id_key"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "angrygames_username_key"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "angrygames_facebook_id_key"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "angrygames_has_pass_key"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "angrygames_photo_url_key"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "angrygames_facebook_name_key"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "angrygames_facebook_show_name_key"

    invoke-static {p10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "angrygames_facebook_show_picture_key"

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz p12, :cond_7

    .line 81
    const-string v2, "angrygames_gender_key"

    invoke-virtual/range {p12 .. p12}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_3
    if-eqz p13, :cond_8

    .line 86
    const-string v2, "angrygames_birthdate_key"

    invoke-virtual/range {p13 .. p13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_4
    if-eqz p14, :cond_9

    .line 91
    const-string v2, "angrygames_nationality_key"

    invoke-virtual/range {p14 .. p14}, Lcom/etermax/tools/nationality/Nationality;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_5
    :try_start_2
    iget-object v2, p0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a:Landroid/accounts/AccountManager;

    const-string v3, ""

    invoke-virtual {v2, v0, v3, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v2, "authAccount"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "accountType"

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    const-string v1, "SHARED"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_7
    const-string v2, "angrygames_gender_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 88
    :cond_8
    const-string v2, "angrygames_birthdate_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 93
    :cond_9
    const-string v2, "angrygames_nationality_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 145
    const-string v0, "angrygames_has_pass_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "angrygames_installation_id_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    const-string v0, "angrygames_username_key"

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 165
    const-string v0, "angrygames_facebook_show_name_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "angrygames_cookie_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    const-string v0, "angrygames_facebook_id_key"

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 170
    const-string v0, "angrygames_facebook_show_picture_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public d()J
    .locals 3

    .prologue
    .line 200
    const-string v0, "angrygames_user_id_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-wide/16 v0, 0x0

    .line 204
    if-eqz v2, :cond_0

    .line 205
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 207
    :cond_0
    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    const-string v0, "angrygames_facebook_name_key"

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->q()Landroid/accounts/Account;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 217
    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    const-string v0, "angrygames_photo_url_key"

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "angrygames_username_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    const-string v0, "angrygames_installation_id_key"

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 227
    const-string v0, "angrygames_has_pass_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "angrygames_photo_url_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "angrygames_facebook_id_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "angrygames_facebook_name_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 247
    const-string v0, "angrygames_facebook_show_name_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 252
    const-string v0, "angrygames_facebook_show_picture_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public m()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 257
    const-string v1, "angrygames_gender_key"

    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    sget-object v2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    goto :goto_0

    .line 262
    :cond_2
    sget-object v2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    goto :goto_0
.end method

.method public n()Ljava/util/Date;
    .locals 3

    .prologue
    .line 270
    const-string v0, "angrygames_birthdate_key"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    if-nez v1, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public o()Lcom/etermax/tools/nationality/Nationality;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 279
    const-string v1, "angrygames_nationality_key"

    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-object v0

    .line 286
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/etermax/tools/nationality/Nationality;->valueOf(Ljava/lang/String;)Lcom/etermax/tools/nationality/Nationality;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    const-string v1, "COUNTRY_NOT_FOUND"

    const-string v2, "Country not found"

    invoke-static {v1, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p()Z
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;->d()J

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
