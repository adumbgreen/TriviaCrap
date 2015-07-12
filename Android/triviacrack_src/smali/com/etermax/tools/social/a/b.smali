.class public Lcom/etermax/tools/social/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/facebook/model/GraphUser;

.field private d:[Lcom/etermax/tools/social/a/c;

.field private e:[Lcom/etermax/tools/social/a/c;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/facebook/Response;
    .locals 3
    .parameter

    .prologue
    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_0
    const-string v1, "/fql"

    sget-object v2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {p0, v1, v0, v2}, Lcom/etermax/tools/social/a/b;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0}, Lcom/facebook/FacebookException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Response;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const/4 v0, 0x0

    .line 257
    :cond_0
    return-object v0

    .line 243
    :cond_1
    new-instance v1, Lcom/facebook/Request;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 246
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, ""

    .line 253
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0}, Lcom/facebook/FacebookException;-><init>()V

    throw v0
.end method

.method private a(I)Lcom/facebook/model/GraphObjectList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT uid, name FROM user WHERE uid IN (SELECT uid2 FROM friend WHERE uid1 = me() ) order by rand() limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lcom/etermax/tools/social/a/b;->a(Ljava/lang/String;)Lcom/facebook/Response;

    move-result-object v0

    .line 328
    const-class v1, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {v0, v1}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphMultiResult;

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/etermax/tools/social/a/b;I)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/etermax/tools/social/a/b;->a(I)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 130
    new-instance v1, Lcom/facebook/Session$Builder;

    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/social/a/d;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    .line 132
    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 134
    return-object v0
.end method

.method private m()Lcom/facebook/model/GraphObjectList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "SELECT uid, name, is_app_user FROM user WHERE uid IN (SELECT uid2 FROM friend WHERE uid1 = me()) order by is_app_user desc"

    .line 313
    invoke-direct {p0, v0}, Lcom/etermax/tools/social/a/b;->a(Ljava/lang/String;)Lcom/facebook/Response;

    move-result-object v0

    .line 315
    const-class v1, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {v0, v1}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphMultiResult;

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/social/a/d;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->a:Landroid/content/Context;

    const-string v1, "FB_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/social/a/b;->b:Landroid/content/SharedPreferences;

    .line 116
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 120
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/etermax/tools/social/a/b;->l()Lcom/facebook/Session;

    .line 127
    :cond_1
    return-void

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application must implement IApplicationFBManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Lcom/etermax/tools/social/a/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etermax/tools/social/a/b$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/etermax/tools/social/a/b$1;-><init>(Lcom/etermax/tools/social/a/b;ILcom/etermax/tools/social/a/h;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Lcom/etermax/tools/social/a/g;)V

    .line 983
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 205
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 647
    new-instance v0, Lcom/etermax/tools/social/a/b$7;

    invoke-direct {v0, p0, p2}, Lcom/etermax/tools/social/a/b$7;-><init>(Lcom/etermax/tools/social/a/b;Landroid/net/Uri;)V

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Lcom/etermax/tools/social/a/g;)V

    .line 662
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/etermax/tools/social/a/g;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;ZLcom/etermax/tools/social/a/g;)V

    .line 139
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    new-instance v0, Lcom/etermax/tools/social/a/b$3;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/etermax/tools/social/a/b$3;-><init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/g;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Lcom/etermax/tools/social/a/g;)V

    .line 461
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/tools/social/a/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    new-instance v0, Lcom/etermax/tools/social/a/b$5;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/social/a/b$5;-><init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/e;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Lcom/etermax/tools/social/a/g;)V

    .line 581
    return-void
.end method

.method public a(Landroid/app/Activity;ZLcom/etermax/tools/social/a/g;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->b:Landroid/content/SharedPreferences;

    const-string v3, "access_token"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    sget-object v5, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    if-eq v3, v5, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    sget-object v5, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne v3, v5, :cond_8

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/etermax/tools/social/a/b;->l()Lcom/facebook/Session;

    move-result-object v0

    move-object v3, v0

    .line 151
    :goto_0
    if-eqz p2, :cond_7

    move v0, v1

    .line 155
    :goto_1
    new-instance v5, Lcom/etermax/tools/social/a/i;

    invoke-direct {v5, p0, p1, v0, p3}, Lcom/etermax/tools/social/a/i;-><init>(Lcom/etermax/tools/social/a/b;Landroid/app/Activity;ILcom/etermax/tools/social/a/g;)V

    .line 157
    if-eqz v4, :cond_2

    .line 158
    const-string v0, "Facebook Manager"

    const-string v6, "Existing access token from facebook 2.0 sdk"

    invoke-static {v0, v6}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "Facebook Manager"

    const-string v6, "Opening session using the old access token."

    invoke-static {v0, v6}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-array v0, v8, [Ljava/lang/String;

    const-string v6, "email"

    aput-object v6, v0, v2

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v7, v7, v7, v0}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 164
    invoke-virtual {v3, v0, v5}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    .line 168
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    const-string v1, "access_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v1, "access_expires"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    :cond_1
    :goto_2
    return-void

    .line 174
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    if-eqz p2, :cond_3

    .line 176
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "email"

    aput-object v6, v4, v2

    const-string v2, "publish_actions"

    aput-object v2, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_2

    .line 178
    :cond_3
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "email"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_2

    .line 181
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/etermax/tools/social/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    invoke-interface {p3}, Lcom/etermax/tools/social/a/g;->a()V

    goto :goto_2

    .line 183
    :cond_5
    if-nez p2, :cond_6

    .line 184
    invoke-interface {p3}, Lcom/etermax/tools/social/a/g;->a()V

    goto :goto_2

    .line 185
    :cond_6
    invoke-virtual {p0}, Lcom/etermax/tools/social/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {v3, v5}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 189
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "publish_actions"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    .line 666
    const-string v0, "request_ids"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_0

    .line 668
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 669
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    .line 673
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/tools/social/a/b;->i()Ljava/lang/String;

    move-result-object v3

    .line 674
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/etermax/tools/social/a/b$8;

    invoke-direct {v5, p0}, Lcom/etermax/tools/social/a/b$8;-><init>(Lcom/etermax/tools/social/a/b;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 682
    invoke-virtual {p0, v0}, Lcom/etermax/tools/social/a/b;->a(Lcom/facebook/Request;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    new-instance v0, Lcom/etermax/tools/social/a/b$4;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/social/a/b$4;-><init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/g;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Lcom/etermax/tools/social/a/g;)V

    .line 505
    return-void
.end method

.method public a(Lcom/etermax/tools/social/a/f;)V
    .locals 6
    .parameter

    .prologue
    .line 691
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 692
    const-string v0, "fields"

    const-string v1, "cover"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "/me"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/etermax/tools/social/a/b$9;

    invoke-direct {v5, p0, p1}, Lcom/etermax/tools/social/a/b$9;-><init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/f;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 713
    return-void
.end method

.method public a(Lcom/facebook/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 717
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/Request;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 718
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/tools/social/a/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    new-instance v0, Lcom/etermax/tools/social/a/b$6;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/social/a/b$6;-><init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/e;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Lcom/etermax/tools/social/a/g;)V

    .line 643
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lcom/etermax/tools/social/a/b;->c:Lcom/facebook/model/GraphUser;

    .line 209
    iput-object v1, p0, Lcom/etermax/tools/social/a/b;->d:[Lcom/etermax/tools/social/a/c;

    .line 210
    iput-object v1, p0, Lcom/etermax/tools/social/a/b;->e:[Lcom/etermax/tools/social/a/c;

    .line 211
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    :cond_0
    iput-object v1, p0, Lcom/etermax/tools/social/a/b;->f:Ljava/util/Map;

    .line 215
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/tools/social/a/b;->c()V

    .line 221
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()Lcom/facebook/model/GraphUser;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->c:Lcom/facebook/model/GraphUser;

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 367
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-nez v1, :cond_1

    .line 369
    const-class v1, Lcom/facebook/model/GraphUser;

    invoke-virtual {v0, v1}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphUser;

    iput-object v0, p0, Lcom/etermax/tools/social/a/b;->c:Lcom/facebook/model/GraphUser;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->c:Lcom/facebook/model/GraphUser;

    return-object v0

    .line 370
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Lcom/etermax/tools/social/a/a;

    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/etermax/tools/social/a/a;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    sget-object v3, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    sget-object v3, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 398
    :cond_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/etermax/tools/social/a/b;->e()Lcom/facebook/model/GraphUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/tools/social/a/b;->e()Lcom/facebook/model/GraphUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()[Lcom/etermax/tools/social/a/c;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 906
    iget-object v1, p0, Lcom/etermax/tools/social/a/b;->e:[Lcom/etermax/tools/social/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/tools/social/a/b;->e:[Lcom/etermax/tools/social/a/c;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 907
    :cond_0
    invoke-direct {p0}, Lcom/etermax/tools/social/a/b;->m()Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    .line 908
    if-eqz v2, :cond_3

    .line 909
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v1

    new-array v3, v1, [Lcom/etermax/tools/social/a/c;

    move v1, v0

    .line 911
    :goto_0
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 912
    invoke-interface {v2, v1}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 913
    new-instance v4, Lcom/etermax/tools/social/a/c;

    const-string v5, "uid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_app_user"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/etermax/tools/social/a/c;-><init>(Lcom/etermax/tools/social/a/b;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v4, v3, v1

    .line 911
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 915
    :cond_1
    iput-object v3, p0, Lcom/etermax/tools/social/a/b;->e:[Lcom/etermax/tools/social/a/c;

    .line 920
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/etermax/tools/social/a/b;->e:[Lcom/etermax/tools/social/a/c;

    return-object v0

    .line 917
    :cond_3
    new-array v0, v0, [Lcom/etermax/tools/social/a/c;

    iput-object v0, p0, Lcom/etermax/tools/social/a/b;->e:[Lcom/etermax/tools/social/a/c;

    goto :goto_1
.end method
