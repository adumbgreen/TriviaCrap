.class public final Lcom/millennialmedia/android/MMRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EDUCATION_ASSOCIATES:Ljava/lang/String; = "associates"

.field public static final EDUCATION_BACHELORS:Ljava/lang/String; = "bachelors"

.field public static final EDUCATION_DOCTORATE:Ljava/lang/String; = "doctorate"

.field public static final EDUCATION_HIGH_SCHOOL:Ljava/lang/String; = "highschool"

.field public static final EDUCATION_IN_COLLEGE:Ljava/lang/String; = "incollege"

.field public static final EDUCATION_MASTERS:Ljava/lang/String; = "masters"

.field public static final EDUCATION_OTHER:Ljava/lang/String; = "other"

.field public static final EDUCATION_SOME_COLLEGE:Ljava/lang/String; = "somecollege"

.field public static final ETHNICITY_ASIAN:Ljava/lang/String; = "asian"

.field public static final ETHNICITY_BLACK:Ljava/lang/String; = "black"

.field public static final ETHNICITY_HISPANIC:Ljava/lang/String; = "hispanic"

.field public static final ETHNICITY_INDIAN:Ljava/lang/String; = "indian"

.field public static final ETHNICITY_MIDDLE_EASTERN:Ljava/lang/String; = "middleeastern"

.field public static final ETHNICITY_NATIVE_AMERICAN:Ljava/lang/String; = "nativeamerican"

.field public static final ETHNICITY_OTHER:Ljava/lang/String; = "other"

.field public static final ETHNICITY_PACIFIC_ISLANDER:Ljava/lang/String; = "pacificislander"

.field public static final ETHNICITY_WHITE:Ljava/lang/String; = "white"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final GENDER_OTHER:Ljava/lang/String; = "other"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_EDUCATION:Ljava/lang/String; = "education"

.field public static final KEY_ETHNICITY:Ljava/lang/String; = "ethnicity"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "hsht"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_MARITAL_STATUS:Ljava/lang/String; = "marital"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "hswd"

.field public static final KEY_ZIP_CODE:Ljava/lang/String; = "zip"

.field public static final MARITAL_DIVORCED:Ljava/lang/String; = "divorced"

.field public static final MARITAL_ENGAGED:Ljava/lang/String; = "engaged"

.field public static final MARITAL_MARRIED:Ljava/lang/String; = "married"

.field public static final MARITAL_OTHER:Ljava/lang/String; = "other"

.field public static final MARITAL_RELATIONSHIP:Ljava/lang/String; = "relationship"

.field public static final MARITAL_SINGLE:Ljava/lang/String; = "single"

.field static l:Landroid/location/Location;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->a:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->b:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->c:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->d:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->e:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->f:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->g:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->h:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->i:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->j:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->k:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->m:Ljava/util/Map;

    .line 108
    return-void
.end method

.method static b(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 350
    const-string v0, "lat"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "long"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "ha"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v0, "va"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "spd"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_1
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const-string v0, "brg"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_2
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    const-string v0, "alt"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_3
    const-string v0, "tslr"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v0, "loc"

    const-string v1, "true"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v0, "lsrc"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_4
    const-string v0, "loc"

    const-string v1, "false"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getUserLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    return-object v0
.end method

.method public static setUserLocation(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    sput-object p0, Lcom/millennialmedia/android/MMRequest;->l:Landroid/location/Location;

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "age"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "children"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 170
    const-string v0, "education"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 172
    const-string v0, "ethnicity"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 174
    const-string v0, "gender"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 176
    const-string v0, "income"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 178
    const-string v0, "keywords"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->g:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 180
    const-string v0, "marital"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->h:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 182
    const-string v0, "politics"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->i:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 184
    const-string v0, "vendor"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->j:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 186
    const-string v0, "zip"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->k:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_b
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/android/MMRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->a:Ljava/lang/String;

    .line 139
    :goto_0
    return-object p0

    .line 114
    :cond_0
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->b:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->c:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->d:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->e:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->f:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_5
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->g:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_6
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->h:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_7
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->i:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_8
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->j:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_9
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->k:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_a
    if-eqz p2, :cond_b

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->a:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setChildren(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->b:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setEducation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->c:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->d:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->e:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setIncome(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->f:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->g:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setMarital(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->h:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setMetaValues(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    if-nez p1, :cond_1

    .line 345
    :cond_0
    return-void

    .line 343
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/android/MMRequest;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/android/MMRequest;

    goto :goto_0
.end method

.method public setPolitics(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->i:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->j:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->k:Ljava/lang/String;

    .line 318
    return-void
.end method
