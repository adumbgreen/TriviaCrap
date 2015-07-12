.class Lcom/mdotm/android/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lorg/apache/http/client/methods/HttpUriRequest;

.field b:Lcom/mdotm/android/d/a;

.field c:Ljava/lang/StringBuffer;

.field d:J

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/mdotm/android/b/c;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/b/c;Ljava/lang/StringBuffer;Lcom/mdotm/android/d/a;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    .line 737
    iput-object p3, p0, Lcom/mdotm/android/b/d;->b:Lcom/mdotm/android/d/a;

    .line 738
    iput-wide p4, p0, Lcom/mdotm/android/b/d;->d:J

    .line 740
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 746
    :try_start_0
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    invoke-static {v1}, Lcom/mdotm/android/b/c;->a(Lcom/mdotm/android/b/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mdotm/android/e/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/b/d;->e:Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/mdotm/android/b/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    iget-object v0, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gaid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/b/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mdotm/android/b/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    .line 763
    iget-object v1, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    invoke-static {v1}, Lcom/mdotm/android/b/c;->a(Lcom/mdotm/android/b/c;)Landroid/content/Context;

    move-result-object v1

    .line 762
    invoke-virtual {v0, v1}, Lcom/mdotm/android/e/f;->e(Landroid/content/Context;)Z

    move-result v0

    .line 764
    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    const-string v1, "ate=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request url is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdotm/android/b/d;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 777
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 783
    const/16 v1, 0x2710

    .line 784
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 789
    const/16 v1, 0x7530

    .line 790
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 791
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 794
    :try_start_2
    iget-object v0, p0, Lcom/mdotm/android/b/d;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 795
    const-string v1, "The request is being sent"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The response code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    .line 801
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 804
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 806
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 808
    :goto_2
    const/4 v3, -0x1

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    if-ne v3, v4, :cond_4

    .line 814
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 818
    const-string v1, "<VAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 820
    new-instance v1, Lcom/mdotm/android/vast/h;

    invoke-direct {v1}, Lcom/mdotm/android/vast/h;-><init>()V

    .line 821
    invoke-virtual {v1, v0}, Lcom/mdotm/android/vast/h;->a(Ljava/lang/String;)Lcom/mdotm/android/vast/e;

    move-result-object v1

    .line 822
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mdotm/android/vast/e;->d()I

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    new-instance v0, Lcom/mdotm/android/b/a;

    invoke-direct {v0}, Lcom/mdotm/android/b/a;-><init>()V

    .line 825
    const/4 v2, 0x0

    invoke-static {}, Lcom/mdotm/android/b/c;->a()I

    move-result v3

    iget-object v4, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    invoke-static {v4}, Lcom/mdotm/android/b/c;->a(Lcom/mdotm/android/b/c;)Landroid/content/Context;

    move-result-object v4

    .line 826
    iget-object v5, p0, Lcom/mdotm/android/b/d;->b:Lcom/mdotm/android/d/a;

    invoke-virtual {v5}, Lcom/mdotm/android/d/a;->c()Z

    move-result v5

    .line 824
    invoke-virtual/range {v0 .. v5}, Lcom/mdotm/android/b/a;->a(Lcom/mdotm/android/vast/e;Lcom/mdotm/android/d/b;ILandroid/content/Context;Z)V

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    iget-object v0, v0, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    invoke-interface {v0, v1}, Lcom/mdotm/android/c/e;->a(Lcom/mdotm/android/vast/e;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 888
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    iget-object v1, v1, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 890
    iget-wide v1, p0, Lcom/mdotm/android/b/d;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 891
    iget-object v1, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    invoke-static {v1}, Lcom/mdotm/android/b/c;->b(Lcom/mdotm/android/b/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 892
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 756
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 767
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/mdotm/android/b/d;->c:Ljava/lang/StringBuffer;

    const-string v1, "ate=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 770
    :catch_1
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 809
    :cond_4
    :try_start_6
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 811
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 832
    :cond_5
    :try_start_7
    new-instance v1, Lcom/mdotm/android/d/b;

    invoke-direct {v1}, Lcom/mdotm/android/d/b;-><init>()V

    .line 833
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mdotm/android/d/b;->e(I)V

    .line 835
    sget v2, Lcom/mdotm/android/b/c;->h:I

    invoke-virtual {v1, v2}, Lcom/mdotm/android/d/b;->b(I)V

    .line 836
    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->a(Ljava/lang/String;)V

    .line 838
    sget v0, Lcom/mdotm/android/e/f;->b:I

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->a(I)V

    .line 839
    if-eqz v1, :cond_6

    .line 840
    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->l()I

    move-result v0

    if-eqz v0, :cond_6

    .line 841
    iget-object v0, p0, Lcom/mdotm/android/b/d;->b:Lcom/mdotm/android/d/a;

    invoke-virtual {v0}, Lcom/mdotm/android/d/a;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 842
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->a(Z)V

    .line 853
    :goto_5
    iget-object v0, p0, Lcom/mdotm/android/b/d;->b:Lcom/mdotm/android/d/a;

    invoke-virtual {v0}, Lcom/mdotm/android/d/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_6

    .line 855
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad width and height "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 858
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 859
    invoke-virtual {v1, v2}, Lcom/mdotm/android/d/b;->c(I)V

    .line 862
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 861
    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->d(I)V

    .line 866
    :cond_6
    iget-object v0, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    iget-object v0, v0, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    invoke-interface {v0, v1}, Lcom/mdotm/android/c/e;->a(Lcom/mdotm/android/d/b;)V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 874
    :catch_3
    move-exception v0

    .line 875
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientProtocolException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    iget-object v0, v0, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    invoke-interface {v0, v6}, Lcom/mdotm/android/c/e;->a(Lcom/mdotm/android/d/b;)V

    goto/16 :goto_4

    .line 844
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/b;->a(Z)V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 881
    :catch_4
    move-exception v0

    .line 882
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    iget-object v0, v0, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    invoke-interface {v0, v6}, Lcom/mdotm/android/c/e;->a(Lcom/mdotm/android/d/b;)V

    goto/16 :goto_4

    .line 869
    :cond_8
    :try_start_9
    iget-object v0, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    iget-object v0, v0, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mdotm/android/c/e;->a(Lcom/mdotm/android/d/b;)V

    goto/16 :goto_4

    .line 872
    :cond_9
    iget-object v0, p0, Lcom/mdotm/android/b/d;->f:Lcom/mdotm/android/b/c;

    iget-object v0, v0, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mdotm/android/c/e;->a(Lcom/mdotm/android/d/b;)V
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4
.end method
