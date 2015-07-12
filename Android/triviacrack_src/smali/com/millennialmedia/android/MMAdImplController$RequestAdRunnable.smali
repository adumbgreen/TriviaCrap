.class Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/millennialmedia/android/HttpMMHeaders;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/millennialmedia/android/MMAdImplController;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMAdImplController;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMAdImplController;Lcom/millennialmedia/android/MMAdImplController$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/millennialmedia/android/MMAdImplController;)V

    return-void
.end method

.method private a()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 578
    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b:Ljava/lang/String;

    .line 580
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 581
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 584
    :cond_0
    if-eqz v0, :cond_2

    .line 585
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 588
    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdImpl;->a(Ljava/util/Map;)V

    .line 589
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/millennialmedia/android/MMSDK;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 591
    const-string v3, "ua"

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/millennialmedia/android/HandShake;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 596
    const-string v4, "MMAdImplController"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 598
    const-string v4, "%s=%s&"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    .line 613
    :goto_1
    return v0

    .line 601
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b:Ljava/lang/String;

    .line 604
    const-string v0, "MMAdImplController"

    const-string v2, "Calling for an advertisement: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 613
    goto :goto_1

    .line 607
    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private a(Lorg/apache/http/HttpEntity;)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xf

    .line 694
    .line 696
    const/4 v0, 0x0

    .line 697
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    .line 698
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    move-object v1, v0

    .line 700
    :goto_0
    if-eqz v1, :cond_1

    .line 701
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "Millennial ad return unsupported format."

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    .line 769
    :goto_1
    return v0

    .line 708
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/millennialmedia/android/CachedAd;->a(Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 722
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 723
    const-string v2, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached video ad JSON received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 730
    const-string v2, "MMAdImplController"

    const-string v3, "New ad has expiration date in the past. Not downloading ad content."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->c(Landroid/content/Context;)V

    .line 733
    new-instance v0, Lcom/millennialmedia/android/MMException;

    invoke-direct {v0, v5}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 769
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 713
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. Invalid response data."

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    goto :goto_1

    .line 716
    :catch_1
    move-exception v0

    .line 717
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 718
    new-instance v1, Lcom/millennialmedia/android/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Millennial ad return failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    goto/16 :goto_1

    .line 735
    :cond_2
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/AdCache;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 739
    const-string v2, "MMAdImplController"

    const-string v3, "Previously fetched ad exists in the playback queue. Not downloading ad content."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->c(Landroid/content/Context;)V

    .line 742
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0x11

    invoke-direct {v0, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_2

    .line 745
    :cond_3
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 746
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 748
    iget-object v2, v0, Lcom/millennialmedia/android/VideoAd;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 749
    const-string v2, "MMAdImplController"

    const-string v3, "Downloading ad..."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 751
    const/4 v2, 0x3

    iput v2, v0, Lcom/millennialmedia/android/VideoAd;->e:I

    .line 752
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-static {v2, v3, v0, v1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

    goto/16 :goto_2

    .line 759
    :cond_4
    const-string v2, "MMAdImplController"

    const-string v3, "Cached ad is valid. Moving it to the front of the queue."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 764
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->f(Lcom/millennialmedia/android/MMAdImpl;)V

    goto/16 :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xe

    const/4 v0, 0x0

    .line 618
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 619
    if-nez v1, :cond_0

    .line 620
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Null HTTP entity"

    invoke-direct {v1, v2, v6}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z

    .line 674
    :goto_0
    return v0

    .line 625
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 626
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. Zero content length returned."

    invoke-direct {v1, v2, v6}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z

    goto :goto_0

    .line 632
    :cond_1
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lorg/apache/http/HttpResponse;)V

    .line 634
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 635
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 637
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 639
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a(Lorg/apache/http/HttpEntity;)Z

    .line 674
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 640
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 644
    const-string v0, "X-MM-Video"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 646
    new-instance v2, Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/HttpMMHeaders;-><init>([Lorg/apache/http/Header;)V

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a:Lcom/millennialmedia/android/HttpMMHeaders;

    .line 648
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    const/4 v0, 0x0

    .line 651
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 652
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 654
    :cond_3
    if-eqz v0, :cond_4

    .line 655
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    .line 656
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lcom/millennialmedia/android/HandShake;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    :cond_4
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lorg/apache/http/HttpEntity;)Z

    goto :goto_1

    .line 663
    :cond_5
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned."

    invoke-direct {v1, v2, v7}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z

    goto/16 :goto_0

    .line 669
    :cond_6
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. HTTP Header value null."

    invoke-direct {v1, v2, v7}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z

    goto/16 :goto_0
.end method

.method private b(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter

    .prologue
    .line 679
    const-string v0, "Set-Cookie"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 680
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 682
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 683
    const-string v4, "MAC-ID="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 684
    if-ltz v4, :cond_0

    .line 685
    const/16 v5, 0x3b

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 686
    if-le v5, v4, :cond_0

    .line 687
    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/millennialmedia/android/MMSDK;->e:Ljava/lang/String;

    .line 680
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_1
    return-void
.end method

.method private b(Lorg/apache/http/HttpEntity;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 775
    const/4 v0, 0x0

    .line 776
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 777
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 779
    :cond_0
    if-eqz v0, :cond_2

    .line 780
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v2

    if-nez v2, :cond_3

    .line 781
    new-instance v2, Lcom/millennialmedia/android/InterstitialAd;

    invoke-direct {v2}, Lcom/millennialmedia/android/InterstitialAd;-><init>()V

    .line 782
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    .line 784
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/InterstitialAd;->b(Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    .line 786
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a:Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->i:Lcom/millennialmedia/android/HttpMMHeaders;

    .line 787
    sget v3, Lcom/millennialmedia/android/MMSDK;->a:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 788
    const-string v3, "MMAdImplController"

    const-string v4, "Received interstitial ad with url %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v3, "MMAdImplController"

    iget-object v4, v2, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 794
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/millennialmedia/android/InterstitialAd;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 797
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->f(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_2
    :goto_0
    move v0, v1

    .line 815
    :goto_1
    return v0

    .line 802
    :cond_3
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_4

    .line 803
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdImplController;->a(Lcom/millennialmedia/android/HttpMMHeaders;)V

    .line 804
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/android/MMAdImplController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_4
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->f(Lcom/millennialmedia/android/MMAdImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    new-instance v1, Lcom/millennialmedia/android/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception raised in HTTP stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/millennialmedia/android/MMException;)Z
    .locals 2
    .parameter

    .prologue
    .line 506
    const-string v0, "MMAdImplController"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    return v0
.end method

.method b(Lcom/millennialmedia/android/MMException;)Z
    .locals 2
    .parameter

    .prologue
    .line 512
    const-string v0, "MMAdImplController"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    return v0
.end method

.method c(Lcom/millennialmedia/android/MMException;)Z
    .locals 2
    .parameter

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 522
    :cond_0
    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 535
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    .line 574
    :goto_0
    return-void

    .line 543
    :cond_0
    :try_start_1
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 544
    if-nez v0, :cond_1

    .line 545
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "HTTP response is null."

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a(Lcom/millennialmedia/android/MMException;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    :try_start_2
    new-instance v1, Lcom/millennialmedia/android/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad request HTTP error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a(Lcom/millennialmedia/android/MMException;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 557
    :cond_1
    :try_start_3
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->a(Lorg/apache/http/HttpResponse;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 560
    :cond_2
    :try_start_4
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "No network available, can\'t call for ads."

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 566
    :catch_1
    move-exception v0

    .line 567
    :try_start_5
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "Request not filled, can\'t call for ads."

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->b(Lcom/millennialmedia/android/MMException;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->c:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v1, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    throw v0
.end method
