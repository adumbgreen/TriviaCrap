.class public Lcom/etermax/admob/millennial/MillennialHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static dip(ILandroid/content/Context;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getApId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-string v0, "apid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static populateAdViewParameters(Lcom/millennialmedia/android/MMAd;Ljava/util/Hashtable;Lcom/google/ads/mediation/MediationAdRequest;Lcom/etermax/admob/millennial/MillennialAdapterExtras;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/android/MMAd;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/mediation/MediationAdRequest;",
            "Lcom/etermax/admob/millennial/MillennialAdapterExtras;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    if-nez p3, :cond_0

    .line 24
    new-instance p3, Lcom/etermax/admob/millennial/MillennialAdapterExtras;

    invoke-direct {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;-><init>()V

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    const-string v0, "keywords"

    const-string v1, ","

    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_1
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getChildren()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    const-string v1, "children"

    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getChildren()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "true"

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 37
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setAge(Ljava/lang/String;)V

    .line 41
    :cond_3
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    sget-object v2, Lcom/etermax/admob/millennial/MillennialHelper$1;->$SwitchMap$com$google$ads$AdRequest$Gender:[I

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 56
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 57
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setIncome(Ljava/lang/String;)V

    .line 60
    :cond_5
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 61
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 64
    :cond_6
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 65
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setZip(Ljava/lang/String;)V

    .line 68
    :cond_7
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 69
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setMarital(Ljava/lang/String;)V

    .line 72
    :cond_8
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 73
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setEthnicity(Ljava/lang/String;)V

    .line 76
    :cond_9
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getPolitics()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Politics;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 77
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getPolitics()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Politics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Politics;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setPolitics(Ljava/lang/String;)V

    .line 80
    :cond_a
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getEducation()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Education;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 81
    invoke-virtual {p3}, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->getEducation()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Education;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Education;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setEducation(Ljava/lang/String;)V

    .line 84
    :cond_b
    if-eqz p1, :cond_c

    .line 85
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMRequest;->setMetaValues(Ljava/util/Map;)V

    .line 88
    :cond_c
    invoke-interface {p0, v0}, Lcom/millennialmedia/android/MMAd;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 89
    return-void

    .line 32
    :cond_d
    const-string v0, "false"

    goto/16 :goto_0

    .line 45
    :pswitch_0
    const-string v1, "male"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 48
    :pswitch_1
    const-string v1, "female"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
