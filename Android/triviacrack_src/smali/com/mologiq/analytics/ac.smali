.class public Lcom/mologiq/analytics/ac;
.super Lcom/mologiq/analytics/u;
.source "SourceFile"


# static fields
.field private static final s:Lcom/mologiq/analytics/ac;

.field private static final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mologiq/analytics/j;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/mologiq/analytics/r;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/mologiq/analytics/ac;

    .line 46
    const-string v1, ".3ca154f5-9711-475d-819c-7bab4289e4a7"

    .line 45
    invoke-direct {v0, v1}, Lcom/mologiq/analytics/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mologiq/analytics/ac;->s:Lcom/mologiq/analytics/ac;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mologiq/analytics/ac;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const-wide/32 v4, 0x927c0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/mologiq/analytics/u;-><init>(Ljava/lang/String;)V

    .line 65
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->a:J

    .line 66
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->b:J

    .line 67
    const-string v0, "http://a.mologiq.net/mologiq/aea"

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->c:Ljava/lang/String;

    .line 68
    const-string v0, "http://a.mologiq.net/mologiq/deai"

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->d:Ljava/lang/String;

    .line 69
    const-string v0, "http://a.mologiq.net/mologiq/dea"

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->e:Ljava/lang/String;

    .line 70
    const-string v0, "http://a.mologiq.net/mologiq/et"

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->f:Ljava/lang/String;

    .line 71
    const/16 v0, 0x64

    iput v0, p0, Lcom/mologiq/analytics/ac;->g:I

    .line 72
    iput-boolean v1, p0, Lcom/mologiq/analytics/ac;->h:Z

    .line 73
    iput-boolean v1, p0, Lcom/mologiq/analytics/ac;->i:Z

    .line 74
    iput-boolean v1, p0, Lcom/mologiq/analytics/ac;->j:Z

    .line 75
    iput-boolean v1, p0, Lcom/mologiq/analytics/ac;->k:Z

    .line 76
    iput-wide v4, p0, Lcom/mologiq/analytics/ac;->m:J

    .line 77
    iput-wide v4, p0, Lcom/mologiq/analytics/ac;->n:J

    .line 78
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->o:J

    .line 79
    iput v1, p0, Lcom/mologiq/analytics/ac;->l:I

    .line 81
    invoke-static {}, Lcom/mologiq/analytics/l;->a()Lcom/mologiq/analytics/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/l;->b()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->p:Landroid/util/SparseArray;

    .line 82
    invoke-static {}, Lcom/mologiq/analytics/p;->a()Lcom/mologiq/analytics/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/p;->c()Lcom/mologiq/analytics/r;

    move-result-object v0

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->q:Lcom/mologiq/analytics/r;

    .line 84
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 733
    if-eqz p1, :cond_d

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 735
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 737
    const-string v2, "adEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    const-string v2, "adEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 739
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->c:Ljava/lang/String;

    .line 742
    :cond_0
    const-string v2, "deviceEventsInitAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    const-string v2, "deviceEventsInitAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 744
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->d:Ljava/lang/String;

    .line 747
    :cond_1
    const-string v2, "deviceEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 750
    const-string v2, "deviceEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 749
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->e:Ljava/lang/String;

    .line 752
    :cond_2
    const-string v2, "targetParamsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 755
    const-string v2, "targetParamsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->f:Ljava/lang/String;

    .line 758
    :cond_3
    const-string v2, "stopForPeriodInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 761
    const-string v2, "stopForPeriodInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 760
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->a:J

    .line 763
    :cond_4
    const-string v2, "locationMask"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 765
    const-string v2, "locationMask"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mologiq/analytics/ac;->g:I

    .line 767
    :cond_5
    const-string v2, "ttlEnhancedTargetParamsInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 770
    const-string v2, "ttlEnhancedTargetParamsInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 769
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->m:J

    .line 772
    :cond_6
    const-string v2, "ttlDeviceStateInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 775
    const-string v2, "ttlDeviceStateInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 774
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->n:J

    .line 777
    :cond_7
    const-string v2, "deviceStateTimestamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 780
    const-string v2, "deviceStateTimestamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 779
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->o:J

    .line 782
    :cond_8
    const-string v2, "enableLocation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 784
    const-string v2, "enableLocation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->h:Z

    .line 791
    :goto_0
    const-string v2, "enableInstalledApps"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 794
    const-string v2, "enableInstalledApps"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 793
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->i:Z

    .line 801
    :goto_1
    const-string v2, "enableNetworkInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 804
    const-string v2, "enableNetworkInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 803
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->j:Z

    .line 811
    :goto_2
    const-string v2, "enableDeviceInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 814
    const-string v2, "enableDeviceInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 813
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->k:Z

    .line 821
    :goto_3
    const-string v2, "policy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 823
    const-string v2, "policy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mologiq/analytics/ac;->l:I

    .line 830
    :goto_4
    const-string v2, "appfilters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 833
    const-string v2, "appfilters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 834
    const-string v0, "applistdata"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 837
    const-string v0, "applistdata"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 838
    if-eqz v2, :cond_9

    .line 839
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 841
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move v0, v1

    .line 842
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_13

    .line 875
    iput-object v4, p0, Lcom/mologiq/analytics/ac;->p:Landroid/util/SparseArray;

    .line 880
    :cond_9
    const-string v0, "meandata"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 884
    const-string v0, "meandata"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 886
    new-instance v4, Lcom/mologiq/analytics/r;

    invoke-static {}, Lcom/mologiq/analytics/p;->a()Lcom/mologiq/analytics/p;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v2}, Lcom/mologiq/analytics/r;-><init>(Lcom/mologiq/analytics/p;)V

    .line 888
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/r;->a(Ljava/lang/String;)V

    .line 889
    const-string v2, "appcount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/r;->a(I)V

    .line 892
    const-string v2, "classifications"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 893
    if-eqz v5, :cond_a

    .line 894
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 896
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 897
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_18

    .line 922
    invoke-virtual {v4, v6}, Lcom/mologiq/analytics/r;->a(Ljava/util/List;)V

    .line 925
    :cond_a
    iput-object v4, p0, Lcom/mologiq/analytics/ac;->q:Lcom/mologiq/analytics/r;

    .line 929
    :cond_b
    const-string v0, "appinstallcampaigns"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 931
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    if-nez v0, :cond_c

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    .line 937
    :cond_c
    const-string v0, "appinstallcampaigns"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v1

    .line 940
    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 939
    if-lt v2, v0, :cond_1a

    .line 1018
    :cond_d
    :goto_8
    return-void

    .line 788
    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 798
    :cond_f
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->i:Z

    goto/16 :goto_1

    .line 808
    :cond_10
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->j:Z

    goto/16 :goto_2

    .line 818
    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->k:Z

    goto/16 :goto_3

    .line 827
    :cond_12
    const/4 v2, 0x1

    iput v2, p0, Lcom/mologiq/analytics/ac;->l:I

    goto/16 :goto_4

    .line 845
    :cond_13
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 847
    new-instance v6, Lcom/mologiq/analytics/j;

    invoke-direct {v6}, Lcom/mologiq/analytics/j;-><init>()V

    .line 849
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 852
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 851
    invoke-virtual {v6, v7}, Lcom/mologiq/analytics/j;->a(Ljava/lang/String;)V

    .line 855
    :cond_14
    const-string v7, "classificationid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 858
    const-string v7, "classificationid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 857
    invoke-virtual {v6, v7}, Lcom/mologiq/analytics/j;->a(I)V

    .line 861
    :cond_15
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 864
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 863
    invoke-virtual {v6, v7}, Lcom/mologiq/analytics/j;->b(I)V

    .line 867
    :cond_16
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 869
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 842
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 900
    :cond_18
    new-instance v7, Lcom/mologiq/analytics/q;

    invoke-static {}, Lcom/mologiq/analytics/p;->a()Lcom/mologiq/analytics/p;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v0}, Lcom/mologiq/analytics/q;-><init>(Lcom/mologiq/analytics/p;)V

    .line 903
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 906
    const-string v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 905
    invoke-virtual {v7, v8}, Lcom/mologiq/analytics/q;->a(I)V

    .line 909
    const-string v8, "mean"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 908
    invoke-virtual {v7, v8}, Lcom/mologiq/analytics/q;->b(I)V

    .line 912
    const-string v8, "apps"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 913
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 914
    :goto_9
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v0, v10, :cond_19

    .line 918
    invoke-virtual {v7, v9}, Lcom/mologiq/analytics/q;->a(Ljava/util/List;)V

    .line 920
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    .line 916
    :cond_19
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 943
    :cond_1a
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 944
    new-instance v5, Lcom/mologiq/analytics/k;

    invoke-direct {v5}, Lcom/mologiq/analytics/k;-><init>()V

    .line 946
    const-string v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 945
    invoke-virtual {v5, v0}, Lcom/mologiq/analytics/k;->b(Ljava/lang/Integer;)V

    .line 949
    const-string v0, "userid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 948
    invoke-virtual {v5, v0}, Lcom/mologiq/analytics/k;->a(Ljava/lang/Integer;)V

    .line 952
    const-string v0, "isnotinstalled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 955
    const-string v0, "isnotinstalled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 956
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 958
    :goto_a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 957
    if-lt v0, v8, :cond_1e

    .line 964
    invoke-virtual {v5, v7}, Lcom/mologiq/analytics/k;->a(Ljava/util/List;)V

    .line 968
    :cond_1b
    const-string v0, "isinstalled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 971
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 973
    const-string v0, "isinstalled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v0, v1

    .line 974
    :goto_b
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v0, v8, :cond_1f

    .line 980
    invoke-virtual {v5, v6}, Lcom/mologiq/analytics/k;->b(Ljava/util/List;)V

    .line 983
    :cond_1c
    const-string v0, "tp"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 986
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 988
    const-string v0, "tp"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v1

    .line 989
    :goto_c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v0, v7, :cond_20

    .line 1001
    invoke-virtual {v5, v6}, Lcom/mologiq/analytics/k;->c(Ljava/util/List;)V

    .line 1004
    :cond_1d
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_7

    .line 961
    :cond_1e
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 960
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 977
    :cond_1f
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 976
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 992
    :cond_20
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 993
    new-instance v8, Lcom/mologiq/analytics/aa;

    invoke-direct {v8}, Lcom/mologiq/analytics/aa;-><init>()V

    .line 995
    const-string v9, "n"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 994
    invoke-virtual {v8, v9}, Lcom/mologiq/analytics/aa;->a(Ljava/lang/String;)V

    .line 997
    const-string v9, "v"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 996
    invoke-virtual {v8, v7}, Lcom/mologiq/analytics/aa;->b(Ljava/lang/String;)V

    .line 999
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;
    .locals 3
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/mologiq/analytics/ac;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/mologiq/analytics/ac;->s:Lcom/mologiq/analytics/ac;

    invoke-virtual {v0, p0}, Lcom/mologiq/analytics/ac;->a(Landroid/content/Context;)V

    .line 58
    :cond_0
    sget-object v0, Lcom/mologiq/analytics/ac;->s:Lcom/mologiq/analytics/ac;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 11

    .prologue
    .line 259
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 261
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "adEventsAndroidUrl"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    const-string v0, "deviceEventsAndroidUrl"

    .line 265
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->f()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    const-string v0, "deviceEventsInitAndroidUrl"

    .line 268
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->c()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    const-string v0, "targetParamsAndroidUrl"

    .line 271
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->g()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_3
    const-string v0, "stopForPeriodInMs"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->d()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 274
    const-string v0, "locationMask"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->o()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    const-string v0, "ttlEnhancedTargetParamsInMs"

    .line 276
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->l()J

    move-result-wide v3

    .line 275
    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    const-string v0, "ttlDeviceStateInMs"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->m()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 278
    const-string v0, "deviceStateTimestamp"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->n()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 279
    const-string v0, "enableLocation"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->h()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 280
    const-string v0, "enableInstalledApps"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->i()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 281
    const-string v0, "enableNetworkInfo"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->j()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 282
    const-string v0, "enableDeviceInfo"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->k()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 283
    const-string v0, "policy"

    iget v1, p0, Lcom/mologiq/analytics/ac;->l:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 285
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 286
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 288
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 298
    const-string v0, "applistdata"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 302
    const-string v0, "version"

    iget-object v4, p0, Lcom/mologiq/analytics/ac;->q:Lcom/mologiq/analytics/r;

    invoke-virtual {v4}, Lcom/mologiq/analytics/r;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v0, "appcount"

    iget-object v4, p0, Lcom/mologiq/analytics/ac;->q:Lcom/mologiq/analytics/r;

    invoke-virtual {v4}, Lcom/mologiq/analytics/r;->b()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 305
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->q:Lcom/mologiq/analytics/r;

    .line 306
    invoke-virtual {v0}, Lcom/mologiq/analytics/r;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 305
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 315
    const-string v0, "classifications"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v0, "meandata"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 321
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 351
    const-string v0, "appinstallcampaigns"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    :cond_4
    const-string v0, "appfilters"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/j;

    .line 291
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 292
    const-string v6, "name"

    invoke-virtual {v0}, Lcom/mologiq/analytics/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v6, "classificationid"

    .line 294
    invoke-virtual {v0}, Lcom/mologiq/analytics/j;->a()I

    move-result v7

    .line 293
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    const-string v6, "id"

    invoke-virtual {v0}, Lcom/mologiq/analytics/j;->c()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 306
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/q;

    .line 308
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 309
    const-string v7, "id"

    invoke-virtual {v0}, Lcom/mologiq/analytics/q;->a()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v7, "mean"

    invoke-virtual {v0}, Lcom/mologiq/analytics/q;->b()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v7, "apps"

    new-instance v8, Lorg/json/JSONArray;

    .line 312
    invoke-virtual {v0}, Lcom/mologiq/analytics/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 311
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 322
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/k;

    .line 324
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 325
    const-string v6, "id"

    .line 326
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->b()Ljava/lang/Integer;

    move-result-object v7

    .line 325
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v6, "userid"

    .line 328
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->a()Ljava/lang/Integer;

    move-result-object v7

    .line 327
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v6, "isnotinstalled"

    new-instance v7, Lorg/json/JSONArray;

    .line 332
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->c()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v6, "isinstalled"

    .line 334
    new-instance v7, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->d()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 333
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->e()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 338
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 339
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 346
    const-string v0, "tp"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    :cond_8
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_2

    .line 339
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/aa;

    .line 341
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 342
    const-string v9, "n"

    invoke-virtual {v0}, Lcom/mologiq/analytics/aa;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v9, "v"

    invoke-virtual {v0}, Lcom/mologiq/analytics/aa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput p1, p0, Lcom/mologiq/analytics/ac;->l:I

    .line 245
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/mologiq/analytics/ac;->o:J

    .line 189
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mologiq/analytics/ac;->b:J

    .line 1028
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1031
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1032
    const-string v1, "core"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1034
    const-string v1, "core"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1036
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mologiq/analytics/ac;->c(Ljava/lang/String;)V

    .line 1041
    :cond_1
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 368
    if-eqz p1, :cond_d

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 370
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    const-string v2, "adEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    const-string v2, "adEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->c:Ljava/lang/String;

    .line 377
    :cond_0
    const-string v2, "deviceEventsInitAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    const-string v2, "deviceEventsInitAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->d:Ljava/lang/String;

    .line 382
    :cond_1
    const-string v2, "deviceEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 385
    const-string v2, "deviceEventsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->e:Ljava/lang/String;

    .line 387
    :cond_2
    const-string v2, "targetParamsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 390
    const-string v2, "targetParamsAndroidUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    iput-object v2, p0, Lcom/mologiq/analytics/ac;->f:Ljava/lang/String;

    .line 393
    :cond_3
    const-string v2, "stopForPeriodInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 396
    const-string v2, "stopForPeriodInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 395
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->a:J

    .line 398
    :cond_4
    const-string v2, "locationMask"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 400
    const-string v2, "locationMask"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mologiq/analytics/ac;->g:I

    .line 402
    :cond_5
    const-string v2, "ttlEnhancedTargetParamsInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 405
    const-string v2, "ttlEnhancedTargetParamsInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 404
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->m:J

    .line 407
    :cond_6
    const-string v2, "ttlDeviceStateInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 410
    const-string v2, "ttlDeviceStateInMs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 409
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->n:J

    .line 412
    :cond_7
    const-string v2, "deviceStateTimestamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 415
    const-string v2, "deviceStateTimestamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 414
    iput-wide v2, p0, Lcom/mologiq/analytics/ac;->o:J

    .line 417
    :cond_8
    const-string v2, "enableLocation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 419
    const-string v2, "enableLocation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->h:Z

    .line 426
    :goto_0
    const-string v2, "enableInstalledApps"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 429
    const-string v2, "enableInstalledApps"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 428
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->i:Z

    .line 436
    :goto_1
    const-string v2, "enableNetworkInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 439
    const-string v2, "enableNetworkInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 438
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->j:Z

    .line 446
    :goto_2
    const-string v2, "enableDeviceInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 449
    const-string v2, "enableDeviceInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 448
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->k:Z

    .line 456
    :goto_3
    const-string v2, "policy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 458
    const-string v2, "policy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mologiq/analytics/ac;->l:I

    .line 465
    :goto_4
    const-string v2, "appFilters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 468
    const-string v2, "appFilters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 469
    const-string v0, "appList"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 472
    const-string v0, "appList"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 473
    if-eqz v2, :cond_9

    .line 474
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v1

    .line 476
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_13

    .line 511
    :cond_9
    const-string v0, "mean"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 515
    const-string v0, "mean"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 517
    new-instance v4, Lcom/mologiq/analytics/r;

    invoke-static {}, Lcom/mologiq/analytics/p;->a()Lcom/mologiq/analytics/p;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v2}, Lcom/mologiq/analytics/r;-><init>(Lcom/mologiq/analytics/p;)V

    .line 519
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/r;->a(Ljava/lang/String;)V

    .line 520
    const-string v2, "appcount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/r;->a(I)V

    .line 523
    const-string v2, "classifications"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 524
    if-eqz v5, :cond_a

    .line 525
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 527
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 528
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_18

    .line 553
    invoke-virtual {v4, v6}, Lcom/mologiq/analytics/r;->a(Ljava/util/List;)V

    .line 556
    :cond_a
    iput-object v4, p0, Lcom/mologiq/analytics/ac;->q:Lcom/mologiq/analytics/r;

    .line 560
    :cond_b
    const-string v0, "campaigns"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 562
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    if-nez v0, :cond_c

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    .line 568
    :cond_c
    const-string v0, "campaigns"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v3, v1

    .line 571
    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 570
    if-lt v3, v0, :cond_1a

    .line 726
    :cond_d
    :goto_8
    return-void

    .line 423
    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 433
    :cond_f
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->i:Z

    goto/16 :goto_1

    .line 443
    :cond_10
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->j:Z

    goto/16 :goto_2

    .line 453
    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mologiq/analytics/ac;->k:Z

    goto/16 :goto_3

    .line 462
    :cond_12
    const/4 v2, 0x0

    iput v2, p0, Lcom/mologiq/analytics/ac;->l:I

    goto/16 :goto_4

    .line 479
    :cond_13
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 481
    new-instance v5, Lcom/mologiq/analytics/j;

    invoke-direct {v5}, Lcom/mologiq/analytics/j;-><init>()V

    .line 483
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 486
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 485
    invoke-virtual {v5, v6}, Lcom/mologiq/analytics/j;->a(Ljava/lang/String;)V

    .line 489
    :cond_14
    const-string v6, "classificationid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 492
    const-string v6, "classificationid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 491
    invoke-virtual {v5, v6}, Lcom/mologiq/analytics/j;->a(I)V

    .line 495
    :cond_15
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 498
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 497
    invoke-virtual {v5, v6}, Lcom/mologiq/analytics/j;->b(I)V

    .line 501
    :cond_16
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 503
    iget-object v6, p0, Lcom/mologiq/analytics/ac;->p:Landroid/util/SparseArray;

    .line 504
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 503
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 531
    :cond_18
    new-instance v7, Lcom/mologiq/analytics/q;

    invoke-static {}, Lcom/mologiq/analytics/p;->a()Lcom/mologiq/analytics/p;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v0}, Lcom/mologiq/analytics/q;-><init>(Lcom/mologiq/analytics/p;)V

    .line 534
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 537
    const-string v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 536
    invoke-virtual {v7, v8}, Lcom/mologiq/analytics/q;->a(I)V

    .line 540
    const-string v8, "mean"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 539
    invoke-virtual {v7, v8}, Lcom/mologiq/analytics/q;->b(I)V

    .line 543
    const-string v8, "apps"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 544
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 545
    :goto_9
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v0, v10, :cond_19

    .line 549
    invoke-virtual {v7, v9}, Lcom/mologiq/analytics/q;->a(Ljava/util/List;)V

    .line 551
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    .line 547
    :cond_19
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 574
    :cond_1a
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 577
    const-string v2, "action"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 580
    const-string v2, "action"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    const-string v5, "add"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 586
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 589
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v1

    .line 592
    :goto_a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 591
    if-lt v2, v0, :cond_1c

    .line 571
    :cond_1b
    :goto_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_7

    .line 595
    :cond_1c
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 597
    new-instance v7, Lcom/mologiq/analytics/k;

    invoke-direct {v7}, Lcom/mologiq/analytics/k;-><init>()V

    .line 600
    const-string v0, "id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 599
    invoke-virtual {v7, v0}, Lcom/mologiq/analytics/k;->b(Ljava/lang/Integer;)V

    .line 603
    const-string v0, "userid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 602
    invoke-virtual {v7, v0}, Lcom/mologiq/analytics/k;->a(Ljava/lang/Integer;)V

    .line 606
    const-string v0, "notinstall"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 610
    const-string v0, "notinstall"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 611
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 613
    :goto_c
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 612
    if-lt v0, v10, :cond_20

    .line 620
    invoke-virtual {v7, v9}, Lcom/mologiq/analytics/k;->a(Ljava/util/List;)V

    .line 624
    :cond_1d
    const-string v0, "install"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 627
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 629
    const-string v0, "install"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v0, v1

    .line 631
    :goto_d
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 630
    if-lt v0, v10, :cond_21

    .line 638
    invoke-virtual {v7, v8}, Lcom/mologiq/analytics/k;->b(Ljava/util/List;)V

    .line 643
    :cond_1e
    const-string v0, "tp"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 645
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 647
    const-string v0, "tp"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v0, v1

    .line 649
    :goto_e
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 648
    if-lt v0, v9, :cond_22

    .line 663
    invoke-virtual {v7, v8}, Lcom/mologiq/analytics/k;->c(Ljava/util/List;)V

    .line 666
    :cond_1f
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    .line 667
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a

    .line 617
    :cond_20
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 616
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 635
    :cond_21
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 634
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 652
    :cond_22
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 653
    new-instance v10, Lcom/mologiq/analytics/aa;

    invoke-direct {v10}, Lcom/mologiq/analytics/aa;-><init>()V

    .line 656
    const-string v11, "n"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 655
    invoke-virtual {v10, v11}, Lcom/mologiq/analytics/aa;->a(Ljava/lang/String;)V

    .line 659
    const-string v11, "v"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 658
    invoke-virtual {v10, v9}, Lcom/mologiq/analytics/aa;->b(Ljava/lang/String;)V

    .line 661
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 672
    :cond_23
    const-string v5, "delete"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 675
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 677
    const-string v5, "data"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 680
    const-string v5, "data"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v0, v1

    .line 683
    :goto_f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 682
    if-lt v0, v6, :cond_25

    .line 695
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 696
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 705
    iput-object v5, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    goto/16 :goto_b

    .line 686
    :cond_25
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 689
    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 691
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 696
    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/k;

    .line 699
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->b()Ljava/lang/Integer;

    move-result-object v7

    .line 698
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 699
    if-nez v7, :cond_24

    .line 701
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-wide v1, p0, Lcom/mologiq/analytics/ac;->a:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mologiq/analytics/ac;->b:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/mologiq/analytics/ac;->a:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mologiq/analytics/ag;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1047
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3ca154f5-9711-475d-819c-7bab4289e4a7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1050
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->a()Ljava/lang/String;

    move-result-object v2

    .line 1051
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1053
    const-string v3, "core"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->u()Ljava/lang/String;

    move-result-object v2

    .line 1056
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1058
    const-string v3, "extra"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/mologiq/analytics/ac;->a:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/mologiq/analytics/ac;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/mologiq/analytics/ac;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/mologiq/analytics/ac;->j:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mologiq/analytics/ac;->k:Z

    return v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/mologiq/analytics/ac;->m:J

    return-wide v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/mologiq/analytics/ac;->n:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/mologiq/analytics/ac;->o:J

    return-wide v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/mologiq/analytics/ac;->g:I

    return v0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/mologiq/analytics/ac;->b:J

    return-wide v0
.end method

.method public q()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mologiq/analytics/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->p:Landroid/util/SparseArray;

    return-object v0
.end method

.method public r()Lcom/mologiq/analytics/r;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->q:Lcom/mologiq/analytics/r;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mologiq/analytics/ac;->r:Ljava/util/List;

    return-object v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/mologiq/analytics/ac;->l:I

    return v0
.end method

.method protected u()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 251
    const-string v1, "stopForPeriodTimestamp"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ac;->p()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
