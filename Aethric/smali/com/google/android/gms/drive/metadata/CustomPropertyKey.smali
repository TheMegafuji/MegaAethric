.class public Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/metadata/CustomPropertyKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE:I = 0x1

.field public static final PUBLIC:I

.field private static final zzja:Ljava/util/regex/Pattern;


# instance fields
.field private final visibility:I

.field private final zziz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/android/gms/drive/metadata/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "[\\w.!@$%^&*()/-]+"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zzja:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-string v0, "key"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zzja:Ljava/util/regex/Pattern;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "key name characters must be alphanumeric or one of .!@$%^&*()-_/"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "visibility must be either PUBLIC or PRIVATE"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zziz:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->visibility:I

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visibility"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zziz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->getVisibility()I

    move-result p1

    iget v2, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->visibility:I

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zziz:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->visibility:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zziz:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->visibility:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->getVisibility()I

    move-result v1

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zziz:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->visibility:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CustomPropertyKey("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->zziz:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    iget v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->visibility:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
