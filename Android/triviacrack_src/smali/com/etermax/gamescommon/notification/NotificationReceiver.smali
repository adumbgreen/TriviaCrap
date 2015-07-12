.class public abstract Lcom/etermax/gamescommon/notification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/e;

.field protected b:Lcom/etermax/gamescommon/datasource/l;

.field protected c:Lcom/etermax/gamescommon/notification/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-static {p1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    new-instance v1, Lcom/etermax/gamescommon/notification/NotificationReceiver$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/notification/NotificationReceiver$2;-><init>(Lcom/etermax/gamescommon/notification/NotificationReceiver;)V

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->a(Lcom/b/a/ar;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ak;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method private final a(Lcom/etermax/gamescommon/f/b/b;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver;->b:Lcom/etermax/gamescommon/datasource/l;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/l;->b(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver;->b:Lcom/etermax/gamescommon/datasource/l;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/datasource/l;->a(Lcom/etermax/gamescommon/f/b/b;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->b(Landroid/content/Context;Landroid/os/Bundle;)Lcom/etermax/gamescommon/notification/a/a;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/etermax/gamescommon/notification/NotificationReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/notification/NotificationReceiver$1;-><init>(Lcom/etermax/gamescommon/notification/NotificationReceiver;Lcom/etermax/gamescommon/notification/a/a;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-virtual {p2}, Lcom/etermax/gamescommon/notification/a/a;->a()Lcom/etermax/gamescommon/f/b/b;

    move-result-object v5

    .line 137
    invoke-virtual {p2}, Lcom/etermax/gamescommon/notification/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v5, v0}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Lcom/etermax/gamescommon/f/b/b;Z)V

    .line 139
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->f:Lcom/etermax/gamescommon/g;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->g:Lcom/etermax/gamescommon/g;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    or-int/lit8 v0, v0, 0x2

    .line 149
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/gamescommon/notification/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver;->b:Lcom/etermax/gamescommon/datasource/l;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/datasource/l;->a(I)Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    .line 156
    :goto_1
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 158
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->f()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_2
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->g()Landroid/text/SpannableString;

    move-result-object v6

    .line 165
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->i()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, -0xff0001

    const/16 v3, 0x12c

    const/16 v7, 0x3e8

    invoke-virtual {v0, v2, v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 174
    const/4 v2, 0x0

    .line 176
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->a:Lcom/etermax/gamescommon/notification/h;

    .line 177
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    if-le v3, v8, :cond_a

    .line 178
    new-instance v3, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v3, v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 180
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 181
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 182
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/b;

    .line 183
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/b;->b()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 184
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/b;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 152
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    goto/16 :goto_1

    .line 161
    :cond_4
    sget v1, Lcom/etermax/o;->app_name:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 186
    :cond_5
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/b;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 190
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v9

    .line 191
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    .line 192
    add-int v0, v8, v9

    const/4 v2, 0x1

    if-le v0, v2, :cond_d

    .line 194
    sget-object v2, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    .line 197
    sget v0, Lcom/etermax/o;->app_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 198
    sget v0, Lcom/etermax/o;->app_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 201
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/b;

    .line 202
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/b;->h()Landroid/text/SpannableString;

    move-result-object v11

    if-nez v11, :cond_7

    .line 203
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/b;->g()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_4

    .line 205
    :cond_7
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/b;->h()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_4

    :cond_8
    move-object v0, v2

    .line 233
    :goto_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    const/4 v4, 0x1

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v4

    invoke-virtual {p2, v0, v2}, Lcom/etermax/gamescommon/notification/a/a;->a(Lcom/etermax/gamescommon/notification/h;[Ljava/lang/Object;)Landroid/text/SpannableString;

    move-result-object v2

    .line 234
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 235
    if-eqz v2, :cond_9

    .line 236
    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_9
    move-object v2, v3

    .line 240
    :cond_a
    if-eqz v2, :cond_10

    .line 241
    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    :cond_b
    :goto_6
    if-eqz p3, :cond_c

    .line 257
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, p1, v1, v7, v0}, Lcom/etermax/gamescommon/notification/g;->a(Landroid/content/Context;ILandroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V

    .line 260
    :cond_c
    return-void

    .line 210
    :cond_d
    sget-object v2, Lcom/etermax/gamescommon/notification/h;->b:Lcom/etermax/gamescommon/notification/h;

    .line 213
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 215
    :try_start_0
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    :cond_e
    :goto_7
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 222
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 228
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/b;

    .line 229
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/b;->g()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_9

    .line 224
    :cond_f
    sget v0, Lcom/etermax/o;->app_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_8

    .line 243
    :cond_10
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2, v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    .line 246
    invoke-virtual {v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 247
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 249
    :try_start_1
    invoke-virtual {v5}, Lcom/etermax/gamescommon/f/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 250
    invoke-virtual {v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 251
    :catch_0
    move-exception v1

    goto/16 :goto_6

    .line 217
    :catch_1
    move-exception v0

    goto :goto_7

    :cond_11
    move-object v0, v2

    goto/16 :goto_5
.end method

.method protected abstract b(Landroid/content/Context;Landroid/os/Bundle;)Lcom/etermax/gamescommon/notification/a/a;
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->e:Lcom/etermax/gamescommon/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver;->c:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/notification/d;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 86
    :cond_0
    return-void
.end method
