.class Lcom/inmobi/re/controller/JSUtilityController$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/re/controller/util/StartActivityForResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/controller/JSUtilityController;->createCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/inmobi/re/controller/JSUtilityController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/controller/JSUtilityController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    iput-object p2, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-static {v0}, Lcom/inmobi/re/controller/JSUtilityController;->a(Lcom/inmobi/re/controller/JSUtilityController;)I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    iget v1, v1, Lcom/inmobi/re/controller/JSUtilityController;->c:I

    if-ne v1, v0, :cond_1

    .line 406
    const-string v0, "[InMobi]-[RE]-4.3.0"

    const-string v1, "User cancelled the create calendar event"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_3

    .line 412
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 423
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->a:Ljava/lang/String;

    const-string v4, "tentative"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 424
    const-string v3, "eventStatus"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-static {v3}, Lcom/inmobi/re/controller/JSUtilityController;->a(Lcom/inmobi/re/controller/JSUtilityController;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 430
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 434
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v3, 0xea60

    div-int/2addr v0, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    :goto_3
    if-lez v0, :cond_6

    .line 453
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Reminder format is incorrect. Reminder can be set only before the event starts"

    const-string v2, "createCalendarEvent"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    const-string v1, "[InMobi]-[RE]-4.3.0"

    const-string v2, "Exception adding reminder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 416
    :cond_3
    :try_start_3
    const-string v0, "content://calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 425
    :cond_4
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->a:Ljava/lang/String;

    const-string v4, "confirmed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 426
    const-string v3, "eventStatus"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 427
    :cond_5
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->a:Ljava/lang/String;

    const-string v4, "cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    const-string v3, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 436
    :catch_1
    move-exception v0

    .line 439
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/re/controller/JSUtilityController;->convertDateString(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 440
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/re/controller/JSUtilityController;->convertDateString(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    .line 441
    sub-long/2addr v3, v5

    long-to-int v0, v3

    const v3, 0xea60

    div-int/2addr v0, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 443
    :catch_2
    move-exception v0

    .line 445
    :try_start_5
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Reminder format is incorrect. Invalid date"

    const-string v2, "createCalendarEvent"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_6
    neg-int v3, v0

    .line 460
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 462
    const-string v4, "hasAlarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    iget-object v4, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-static {v4}, Lcom/inmobi/re/controller/JSUtilityController;->a(Lcom/inmobi/re/controller/JSUtilityController;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 464
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_7

    .line 468
    const-string v0, "content://com.android.calendar/reminders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 474
    :goto_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 475
    const-string v4, "event_id"

    iget-object v5, p0, Lcom/inmobi/re/controller/JSUtilityController$e;->d:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-static {v5}, Lcom/inmobi/re/controller/JSUtilityController;->a(Lcom/inmobi/re/controller/JSUtilityController;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    const-string v4, "method"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const-string v4, "minutes"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 472
    :cond_7
    const-string v0, "content://calendar/reminders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_4
.end method
