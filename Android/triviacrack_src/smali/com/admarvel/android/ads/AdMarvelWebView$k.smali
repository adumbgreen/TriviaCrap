.class Lcom/admarvel/android/ads/AdMarvelWebView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/text/SimpleDateFormat;

.field b:Ljava/lang/Long;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelWebView;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelInternalWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->k:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->l:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    :cond_0
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->k:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->l:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    :cond_0
    if-eqz p8, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    :goto_0
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->g:Ljava/lang/String;

    if-gtz p9, :cond_1

    div-int/lit8 v0, p9, 0x3c

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddhhmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    const/4 v1, 0x1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->k:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->l:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    :cond_0
    if-eqz p8, :cond_3

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    :goto_0
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->g:Ljava/lang/String;

    if-gtz p9, :cond_1

    div-int/lit8 v1, p9, 0x3c

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    :cond_1
    if-eqz p10, :cond_2

    invoke-virtual {p10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iput-object p10, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->h:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v0, "content://com.android.calendar/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://calendar/"

    goto :goto_0
.end method

.method public run()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_0

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "displayname"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_d

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v4, v2, [I

    move v2, v8

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v4, v2

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "calendar_id"

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->d:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, "title"

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->e:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v3, "description"

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->f:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v3, "eventLocation"

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    if-eqz v3, :cond_6

    const-string v3, "dtstart"

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    if-eqz v3, :cond_7

    const-string v3, "dtend"

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->c:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->g:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const-string v3, "allDay"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    if-gtz v3, :cond_a

    const-string v3, "hasAlarm"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->h:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, "eventTimezone"

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "events"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView$k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "reminders"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_e

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    if-gtz v3, :cond_c

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "event_id"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "method"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "minutes"

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->j:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_c
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(\"YES\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(\"NO\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$k;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\"NO\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method
