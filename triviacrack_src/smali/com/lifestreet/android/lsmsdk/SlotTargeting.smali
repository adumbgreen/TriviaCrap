.class public final Lcom/lifestreet/android/lsmsdk/SlotTargeting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAllowAutoLocation:Z

.field private mAreaCode:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mGender:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

.field private mLatitude:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mMetro:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mZip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mAllowAutoLocation:Z

    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mGender:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInstance()Landroid/location/Location;
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLatitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLongitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Landroid/location/Location;

    const-string v1, "Current"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 101
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 104
    :cond_0
    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMetro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mMetro:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mZip:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowAutoLocation()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mAllowAutoLocation:Z

    return v0
.end method

.method public setAllowAutoLocation(Z)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mAllowAutoLocation:Z

    .line 113
    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mAreaCode:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mCity:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setGender(Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mGender:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    .line 53
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLatitude:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLongitude:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMetro(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mMetro:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mRegion:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mZip:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    const-string v0, "areacode"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mAreaCode:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "zip"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mZip:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "city"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mCity:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "metro"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mMetro:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "region"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mRegion:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mGender:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "gender"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mGender:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLatitude:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLongitude:Ljava/lang/String;

    .line 131
    iget-boolean v3, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mAllowAutoLocation:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLatitude:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->mLongitude:Ljava/lang/String;

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 132
    invoke-static {p1}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_1

    .line 134
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_1
    const-string v3, "lat"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "long"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v2
.end method
