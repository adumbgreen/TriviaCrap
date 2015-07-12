.class public Lcom/etermax/gamescommon/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/a/a/a/a;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Lcom/etermax/gamescommon/g/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/etermax/gamescommon/g/c;->a:Z

    .line 74
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/etermax/gamescommon/g/c;->b:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/etermax/gamescommon/g/c;->c:Z

    .line 80
    iput-boolean v1, p0, Lcom/etermax/gamescommon/g/c;->d:Z

    .line 83
    iput-boolean v1, p0, Lcom/etermax/gamescommon/g/c;->e:Z

    .line 87
    iput-boolean v1, p0, Lcom/etermax/gamescommon/g/c;->f:Z

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/gamescommon/g/c;->g:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    .line 164
    invoke-virtual {p0, p2}, Lcom/etermax/gamescommon/g/c;->a(Z)V

    .line 165
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 761
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 762
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 766
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 767
    rsub-int v0, p0, -0x3e8

    .line 768
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 769
    aget-object v0, v1, v0

    .line 775
    :goto_0
    return-object v0

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 773
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 4
    .parameter

    .prologue
    .line 805
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 806
    if-nez v0, :cond_0

    .line 807
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 808
    const/4 v0, 0x0

    .line 812
    :goto_0
    return v0

    .line 809
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 810
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 811
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 812
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 814
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 816
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .locals 4
    .parameter

    .prologue
    .line 788
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 789
    if-nez v0, :cond_0

    .line 790
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 791
    const/4 v0, 0x0

    .line 795
    :goto_0
    return v0

    .line 792
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 793
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 794
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 795
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 797
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 799
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Lcom/etermax/gamescommon/g/a;Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 841
    const/4 v0, 0x0

    .line 844
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getPurchases with continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 847
    invoke-virtual {p0, v5}, Lcom/etermax/gamescommon/g/c;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Owned items response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 849
    if-eqz v0, :cond_1

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/etermax/gamescommon/g/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    move v4, v0

    .line 883
    :goto_0
    return v4

    .line 853
    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 854
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 855
    const/16 v4, -0x3ea

    goto :goto_0

    .line 858
    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 859
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 860
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move v3, v4

    .line 862
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 863
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 865
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 867
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sku is owned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 868
    new-instance v2, Lcom/etermax/gamescommon/g/j;

    invoke-direct {v2, p2, v0, v1}, Lcom/etermax/gamescommon/g/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v2}, Lcom/etermax/gamescommon/g/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 871
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->e(Ljava/lang/String;)V

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 876
    :cond_4
    invoke-virtual {p1, v2}, Lcom/etermax/gamescommon/g/a;->a(Lcom/etermax/gamescommon/g/j;)V

    .line 862
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 879
    :cond_5
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 881
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/etermax/gamescommon/g/a;Ljava/util/List;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/g/a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 887
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 888
    const-string v0, "querySkuDetails"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;)V

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 890
    invoke-virtual {p2, p1}, Lcom/etermax/gamescommon/g/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 891
    if-eqz p3, :cond_0

    .line 892
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 894
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 895
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    move v0, v1

    .line 921
    :goto_0
    return v0

    .line 899
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 900
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 901
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1, v2}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 903
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 904
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 905
    if-eqz v0, :cond_2

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/etermax/gamescommon/g/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 909
    :cond_2
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 910
    const/16 v0, -0x3ea

    goto :goto_0

    .line 914
    :cond_3
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 917
    new-instance v3, Lcom/etermax/gamescommon/g/k;

    invoke-direct {v3, p1, v0}, Lcom/etermax/gamescommon/g/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2, v3}, Lcom/etermax/gamescommon/g/a;->a(Lcom/etermax/gamescommon/g/k;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 921
    goto :goto_0
.end method

.method public a(ZLjava/util/List;)Lcom/etermax/gamescommon/g/a;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/etermax/gamescommon/g/a;"
        }
    .end annotation

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/etermax/gamescommon/g/c;->a(ZLjava/util/List;Ljava/util/List;)Lcom/etermax/gamescommon/g/a;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLjava/util/List;Ljava/util/List;)Lcom/etermax/gamescommon/g/a;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/etermax/gamescommon/g/a;"
        }
    .end annotation

    .prologue
    .line 545
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;)V

    .line 547
    :try_start_0
    new-instance v0, Lcom/etermax/gamescommon/g/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/g/a;-><init>()V

    .line 548
    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/g/c;->a(Lcom/etermax/gamescommon/g/a;Ljava/lang/String;)I

    move-result v1

    .line 549
    if-eqz v1, :cond_0

    .line 550
    new-instance v0, Lcom/etermax/gamescommon/g/b;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 576
    :catch_0
    move-exception v0

    .line 577
    new-instance v1, Lcom/etermax/gamescommon/g/b;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 553
    :cond_0
    if-eqz p1, :cond_1

    .line 554
    :try_start_1
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;Lcom/etermax/gamescommon/g/a;Ljava/util/List;)I

    move-result v1

    .line 555
    if-eqz v1, :cond_1

    .line 556
    new-instance v0, Lcom/etermax/gamescommon/g/b;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 578
    :catch_1
    move-exception v0

    .line 579
    new-instance v1, Lcom/etermax/gamescommon/g/b;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 561
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/etermax/gamescommon/g/c;->e:Z

    if-eqz v1, :cond_3

    .line 562
    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/g/c;->a(Lcom/etermax/gamescommon/g/a;Ljava/lang/String;)I

    move-result v1

    .line 563
    if-eqz v1, :cond_2

    .line 564
    new-instance v0, Lcom/etermax/gamescommon/g/b;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 580
    :catch_2
    move-exception v0

    .line 581
    new-instance v1, Lcom/etermax/gamescommon/g/b;

    const/16 v2, -0x3f0

    const-string v3, "NullPointer while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 567
    :cond_2
    if-eqz p1, :cond_3

    .line 568
    :try_start_3
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p2}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;Lcom/etermax/gamescommon/g/a;Ljava/util/List;)I

    move-result v1

    .line 569
    if-eqz v1, :cond_3

    .line 570
    new-instance v0, Lcom/etermax/gamescommon/g/b;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 575
    :cond_3
    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILcom/etermax/gamescommon/g/f;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/g/c;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/etermax/gamescommon/g/f;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILcom/etermax/gamescommon/g/f;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/g/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/etermax/gamescommon/g/f;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/etermax/gamescommon/g/f;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 378
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;)V

    .line 381
    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->e:Z

    if-nez v0, :cond_1

    .line 382
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 383
    if-eqz p5, :cond_0

    .line 384
    invoke-interface {p5, v0, p2, v7}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 392
    if-eqz v1, :cond_3

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/etermax/gamescommon/g/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 396
    if-eqz p5, :cond_0

    .line 397
    const/4 v1, 0x0

    invoke-interface {p5, v0, p2, v1}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 413
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 414
    if-eqz p5, :cond_2

    .line 415
    invoke-interface {p5, v0, p2, v7}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/g/c;->b()V

    goto/16 :goto_0

    .line 402
    :cond_3
    :try_start_1
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->b(Ljava/lang/String;)V

    .line 403
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 405
    iput p4, p0, Lcom/etermax/gamescommon/g/c;->k:I

    .line 406
    iput-object p5, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    .line 407
    iput-object p3, p0, Lcom/etermax/gamescommon/g/c;->l:Ljava/lang/String;

    .line 408
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 422
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 423
    if-eqz p5, :cond_4

    .line 424
    invoke-interface {p5, v0, p2, v7}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    .line 426
    :cond_4
    invoke-virtual {p0}, Lcom/etermax/gamescommon/g/c;->b()V

    goto/16 :goto_0
.end method

.method public a(Lcom/etermax/gamescommon/g/g;)V
    .locals 4
    .parameter

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->c:Z

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "IAB helper is already set up."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->e(Ljava/lang/String;)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/etermax/gamescommon/g/c$1;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/g/c$1;-><init>(Lcom/etermax/gamescommon/g/c;Lcom/etermax/gamescommon/g/g;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/g/c;->j:Landroid/content/ServiceConnection;

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 270
    :cond_2
    if-eqz p1, :cond_0

    .line 271
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/etermax/gamescommon/g/g;->a(Lcom/etermax/gamescommon/g/i;)V

    goto :goto_0
.end method

.method a(Lcom/etermax/gamescommon/g/j;)V
    .locals 5
    .parameter

    .prologue
    .line 660
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;)V

    .line 662
    iget-object v0, p1, Lcom/etermax/gamescommon/g/j;->a:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lcom/etermax/gamescommon/g/b;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/etermax/gamescommon/g/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;)V

    throw v0

    .line 667
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/j;->e()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 669
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 671
    new-instance v0, Lcom/etermax/gamescommon/g/b;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    new-instance v1, Lcom/etermax/gamescommon/g/b;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 674
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/a/a/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 676
    if-nez v0, :cond_3

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 685
    return-void

    .line 679
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/etermax/gamescommon/g/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 680
    new-instance v2, Lcom/etermax/gamescommon/g/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/etermax/gamescommon/g/b;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public a(Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/g/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 731
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;)V

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 733
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/etermax/gamescommon/g/c;->a(Ljava/util/List;Lcom/etermax/gamescommon/g/d;Lcom/etermax/gamescommon/g/e;)V

    .line 735
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->c:Z

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;Lcom/etermax/gamescommon/g/d;Lcom/etermax/gamescommon/g/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/g/j;",
            ">;",
            "Lcom/etermax/gamescommon/g/d;",
            "Lcom/etermax/gamescommon/g/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 925
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 926
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->b(Ljava/lang/String;)V

    .line 927
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/etermax/gamescommon/g/c$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/g/c$3;-><init>(Lcom/etermax/gamescommon/g/c;Ljava/util/List;Lcom/etermax/gamescommon/g/d;Landroid/os/Handler;Lcom/etermax/gamescommon/g/e;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 956
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/etermax/gamescommon/g/c;->a:Z

    .line 178
    return-void
.end method

.method public a(ZLcom/etermax/gamescommon/g/h;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/etermax/gamescommon/g/c;->a(ZLjava/util/List;Lcom/etermax/gamescommon/g/h;)V

    .line 646
    return-void
.end method

.method public a(ZLjava/util/List;Lcom/etermax/gamescommon/g/h;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etermax/gamescommon/g/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 615
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;)V

    .line 616
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->b(Ljava/lang/String;)V

    .line 617
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/etermax/gamescommon/g/c$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/g/c$2;-><init>(Lcom/etermax/gamescommon/g/c;ZLjava/util/List;Landroid/os/Handler;Lcom/etermax/gamescommon/g/h;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 638
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->d:Z

    return v0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v7, -0x3ea

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 449
    iget v2, p0, Lcom/etermax/gamescommon/g/c;->k:I

    if-eq p1, v2, :cond_0

    .line 518
    :goto_0
    return v0

    .line 452
    :cond_0
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/etermax/gamescommon/g/c;->b()V

    .line 457
    if-nez p3, :cond_2

    .line 458
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 459
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v7, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    invoke-interface {v2, v0, v6, v6}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    :cond_1
    move v0, v1

    .line 462
    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p0, p3}, Lcom/etermax/gamescommon/g/c;->a(Landroid/content/Intent;)I

    move-result v2

    .line 466
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    if-ne p2, v5, :cond_8

    if-nez v2, :cond_8

    .line 470
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/etermax/gamescommon/g/c;->l:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 476
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 477
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    if-eqz v2, :cond_4

    .line 481
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    invoke-interface {v2, v0, v6, v6}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    :cond_4
    move v0, v1

    .line 482
    goto/16 :goto_0

    .line 487
    :cond_5
    :try_start_0
    new-instance v2, Lcom/etermax/gamescommon/g/j;

    iget-object v5, p0, Lcom/etermax/gamescommon/g/c;->l:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lcom/etermax/gamescommon/g/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    iget-object v3, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    if-eqz v3, :cond_6

    .line 498
    iget-object v3, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    new-instance v4, Lcom/etermax/gamescommon/g/i;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/etermax/gamescommon/g/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v2}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    :cond_6
    :goto_1
    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 491
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v7, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    if-eqz v2, :cond_7

    .line 493
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    invoke-interface {v2, v0, v6, v6}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    :cond_7
    move v0, v1

    .line 494
    goto/16 :goto_0

    .line 500
    :cond_8
    if-ne p2, v5, :cond_9

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/etermax/gamescommon/g/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    if-eqz v0, :cond_6

    .line 504
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    invoke-interface {v2, v0, v6, v6}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    goto :goto_1

    .line 507
    :cond_9
    if-nez p2, :cond_a

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/etermax/gamescommon/g/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 509
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    if-eqz v2, :cond_6

    .line 511
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    invoke-interface {v2, v0, v6, v6}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    goto :goto_1

    .line 513
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/etermax/gamescommon/g/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->d(Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    if-eqz v2, :cond_6

    .line 516
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->m:Lcom/etermax/gamescommon/g/f;

    invoke-interface {v2, v0, v6, v6}, Lcom/etermax/gamescommon/g/f;->a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V

    goto/16 :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/g/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/gamescommon/g/c;->g:Ljava/lang/String;

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->f:Z

    .line 834
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->f:Z

    if-eqz v0, :cond_0

    .line 822
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/g/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_0
    iput-object p1, p0, Lcom/etermax/gamescommon/g/c;->g:Ljava/lang/String;

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->f:Z

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/etermax/gamescommon/g/c;->e:Z

    .line 307
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->a:Z

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->a:Z

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/etermax/gamescommon/g/c;->a:Z

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    return-void
.end method
